.class public Lcom/dspread/xpos/q0;
.super Lcom/dspread/xpos/Vpos;
.source "VPosBluetooth_2mode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/q0$b;
    }
.end annotation


# static fields
.field public static final A0:I = 0x2

.field private static final B0:I = 0x2800

.field private static final C0:I = 0x80

.field private static j0:Lcom/dspread/xpos/q0; = null

.field private static k0:Z = false

.field public static final l0:Ljava/lang/String; = "VPosBluetooth"

.field public static final m0:Ljava/lang/String; = "NOTIFY_UI"

.field public static final n0:Ljava/lang/String; = "INCOMING_MSG"

.field public static final o0:Ljava/lang/String; = "OUTGOING_MSG"

.field public static final p0:Ljava/lang/String; = "ALERT_MSG"

.field public static final q0:Ljava/lang/String; = "device_address"

.field public static final r0:Ljava/lang/String; = "disconnected_device_address"

.field public static final s0:I = 0x3b9aca01

.field public static final t0:I = 0x3b9aca02

.field public static final u0:I = 0x3b9aca03

.field public static final v0:I = 0x3b9aca04

.field public static final w0:Ljava/lang/String; = "toast"

.field public static final x0:I = 0x3b9aca05

.field public static final y0:I = 0x3b9aca06

.field public static final z0:I = 0x1


# instance fields
.field private P:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:Ljava/lang/Object;

.field private T:Z

.field private U:Lcom/dspread/xpos/bluetoothUtil/a;

.field private V:Lcom/dspread/xpos/bluetoothUtil/b;

.field private W:Z

.field private X:Z

.field private Y:Lcom/dspread/xpos/bluetoothUtil/b$a;

.field private Z:Z

.field private a0:[B

.field private b0:I

.field private c0:I

.field private d0:I

.field private e0:[B

.field private f0:Z

.field private g0:Z

.field public h0:Z

.field private i0:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/q0;->P:Ljava/util/Set;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/q0;->R:Z

    .line 8
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dspread/xpos/q0;->S:Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/c;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dspread/xpos/q0;->T:Z

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dspread/xpos/q0;->U:Lcom/dspread/xpos/bluetoothUtil/a;

    .line 86
    iput-boolean v0, p0, Lcom/dspread/xpos/q0;->W:Z

    .line 155
    iput-boolean v0, p0, Lcom/dspread/xpos/q0;->X:Z

    .line 178
    iput-object v1, p0, Lcom/dspread/xpos/q0;->Y:Lcom/dspread/xpos/bluetoothUtil/b$a;

    .line 276
    iput-boolean v0, p0, Lcom/dspread/xpos/q0;->Z:Z

    .line 393
    const/16 v2, 0x2800

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/dspread/xpos/q0;->a0:[B

    .line 394
    iput v0, p0, Lcom/dspread/xpos/q0;->b0:I

    .line 566
    iput v0, p0, Lcom/dspread/xpos/q0;->c0:I

    .line 567
    iput v0, p0, Lcom/dspread/xpos/q0;->d0:I

    .line 568
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/dspread/xpos/q0;->e0:[B

    .line 613
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dspread/xpos/q0;->f0:Z

    .line 685
    iput-boolean v0, p0, Lcom/dspread/xpos/q0;->g0:Z

    .line 686
    iput-boolean v0, p0, Lcom/dspread/xpos/q0;->h0:Z

    .line 718
    new-instance v0, Lcom/dspread/xpos/q0$a;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/q0$a;-><init>(Lcom/dspread/xpos/q0;)V

    iput-object v0, p0, Lcom/dspread/xpos/q0;->i0:Landroid/content/BroadcastReceiver;

    .line 719
    new-instance v0, Lcom/dspread/xpos/q0$b;

    invoke-direct {v0, p0, v1}, Lcom/dspread/xpos/q0$b;-><init>(Lcom/dspread/xpos/q0;Lcom/dspread/xpos/q0$a;)V

    iput-object v0, p0, Lcom/dspread/xpos/q0;->Y:Lcom/dspread/xpos/bluetoothUtil/b$a;

    return-void
.end method

.method private F()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/q0;->W:Z

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/q0;->V:Lcom/dspread/xpos/bluetoothUtil/b;

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x96

    .line 5
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/q0;->V:Lcom/dspread/xpos/bluetoothUtil/b;

    iput-boolean v1, v0, Lcom/dspread/xpos/bluetoothUtil/b;->d:Z

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/q0;->V:Lcom/dspread/xpos/bluetoothUtil/b;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetoothUtil/b;->a()V

    .line 12
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {v0}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/dspread/xpos/q0;->V:Lcom/dspread/xpos/bluetoothUtil/b;

    .line 14
    iget-object v0, p0, Lcom/dspread/xpos/q0;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothSocket;

    if-eqz v3, :cond_0

    .line 17
    :try_start_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/q0;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 25
    iput-object v2, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    const-wide/16 v2, 0xc8

    .line 27
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :cond_2
    :goto_2
    nop

    .line 34
    iput-boolean v1, p0, Lcom/dspread/xpos/q0;->W:Z

    return-void
.end method

.method private G()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/q0;->N()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, "\u6ca1\u6709\u8fde\u63a5"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/dspread/xpos/q0;->c()V

    return-void

    .line 8
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 9
    const-string v0, "b.length == 0"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/dspread/xpos/q0;->c()V

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
    invoke-virtual {p0}, Lcom/dspread/xpos/q0;->c()V

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
    iput v1, p0, Lcom/dspread/xpos/q0;->c0:I

    .line 21
    iput v1, p0, Lcom/dspread/xpos/q0;->d0:I

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

.method public static H()Lcom/dspread/xpos/q0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/q0;->j0:Lcom/dspread/xpos/q0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/q0;

    invoke-direct {v0}, Lcom/dspread/xpos/q0;-><init>()V

    sput-object v0, Lcom/dspread/xpos/q0;->j0:Lcom/dspread/xpos/q0;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/q0;->j0:Lcom/dspread/xpos/q0;

    return-object v0
.end method

.method private M()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-boolean v2, p0, Lcom/dspread/xpos/q0;->R:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    move v2, v0

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/q0;->J()Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    const-string v1, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 18
    new-array v0, v0, [B

    return-object v0

    .line 22
    :cond_1
    iget v3, p0, Lcom/dspread/xpos/q0;->b0:I

    if-lez v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 24
    new-array v2, v3, [B

    .line 25
    iget-object v4, p0, Lcom/dspread/xpos/q0;->a0:[B

    invoke-static {v4, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v2, 0x3

    if-le v3, v2, :cond_6

    .line 30
    iget-object v2, p0, Lcom/dspread/xpos/q0;->a0:[B

    aget-byte v4, v2, v0

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    .line 33
    aget-byte v4, v2, v4

    if-gez v4, :cond_4

    add-int/lit16 v4, v4, 0x100

    :cond_4
    const/4 v5, 0x1

    .line 37
    aget-byte v5, v2, v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    if-ne v4, v3, :cond_5

    .line 41
    new-array v1, v3, [B

    .line 42
    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    if-ge v4, v3, :cond_6

    goto :goto_1

    .line 48
    :cond_6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 49
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 50
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

    .line 58
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read1:"

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

.method private N()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/q0;->J()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    const-string v1, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    iget v1, p0, Lcom/dspread/xpos/q0;->b0:I

    if-lez v1, :cond_1

    .line 7
    iget v2, p0, Lcom/dspread/xpos/q0;->d0:I

    if-eq v1, v2, :cond_1

    .line 8
    new-array v2, v1, [B

    .line 9
    iget-object v3, p0, Lcom/dspread/xpos/q0;->a0:[B

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_1
    iput v1, p0, Lcom/dspread/xpos/q0;->d0:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    .line 14
    iget-object v2, p0, Lcom/dspread/xpos/q0;->a0:[B

    aget-byte v3, v2, v0

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    .line 15
    iget-object v0, p0, Lcom/dspread/xpos/q0;->e0:[B

    return-object v0

    :cond_2
    const/4 v3, 0x2

    .line 17
    aget-byte v3, v2, v3

    iput v3, p0, Lcom/dspread/xpos/q0;->c0:I

    if-gez v3, :cond_3

    add-int/lit16 v3, v3, 0x100

    .line 19
    iput v3, p0, Lcom/dspread/xpos/q0;->c0:I

    .line 21
    :cond_3
    iget v3, p0, Lcom/dspread/xpos/q0;->c0:I

    const/4 v4, 0x1

    aget-byte v5, v2, v4

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    .line 22
    iput v3, p0, Lcom/dspread/xpos/q0;->c0:I

    if-ne v3, v1, :cond_4

    .line 25
    new-array v3, v1, [B

    iput-object v3, p0, Lcom/dspread/xpos/q0;->e0:[B

    .line 26
    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    if-ge v3, v1, :cond_5

    .line 28
    new-array v0, v4, [B

    return-object v0

    .line 31
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 33
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/q0;->e0:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 36
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/q0;->e0:[B

    .line 39
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/q0;->e0:[B

    return-object v0
.end method

.method private O()[B
    .locals 9

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/dspread/xpos/q0;->R:Z

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
    invoke-virtual {p0}, Lcom/dspread/xpos/q0;->J()Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    const-string v2, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    new-array v0, v0, [B

    return-object v0

    .line 20
    :cond_3
    iget-object v5, p0, Lcom/dspread/xpos/q0;->a0:[B

    aget-byte v6, v5, v0

    if-nez v6, :cond_4

    goto :goto_0

    .line 25
    :cond_4
    iget v7, p0, Lcom/dspread/xpos/q0;->b0:I

    const/4 v8, 0x6

    if-lt v7, v8, :cond_9

    const/16 v4, 0x44

    if-eq v6, v4, :cond_5

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "head[0] != \'D\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/q0;->a0:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 28
    new-array v0, v0, [B

    return-object v0

    :cond_5
    nop

    .line 31
    const/4 v4, 0x1

    aget-byte v5, v5, v4

    const/16 v6, 0x50

    if-eq v5, v6, :cond_6

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "head[1] != \'P\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/q0;->a0:[B

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 33
    new-array v0, v0, [B

    return-object v0

    :cond_6
    const/4 v4, 0x4

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_8

    .line 38
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 39
    const-string/jumbo v1, "\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f66"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 40
    new-array v0, v0, [B

    return-object v0

    .line 42
    :cond_7
    iget-object v6, p0, Lcom/dspread/xpos/q0;->a0:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    aput-byte v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_1

    .line 44
    :cond_8
    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    .line 48
    :cond_9
    iget v5, p0, Lcom/dspread/xpos/q0;->b0:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_a

    if-nez v4, :cond_1

    :cond_a
    add-int/lit8 v6, v4, 0xc

    if-ne v5, v6, :cond_1

    .line 52
    new-array v1, v6, [B

    .line 53
    iget-object v2, p0, Lcom/dspread/xpos/q0;->a0:[B

    invoke-static {v2, v0, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
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

    .line 59
    aget-byte v4, v1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 63
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

    .line 64
    aget-byte v2, v1, v4

    if-eq v3, v2, :cond_d

    .line 65
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

    .line 66
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_d
    return-object v1

    :catch_0
    move-exception v1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 77
    new-array v1, v0, [B

    :goto_3
    return-object v1
.end method

.method static synthetic a(Lcom/dspread/xpos/q0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/q0;->b0:I

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/q0;I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/q0;->b0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dspread/xpos/q0;->b0:I

    return v0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 9

    .line 3
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HUAWEI D2-6070"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Lenovo A798t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPosBluetoothbondtime===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x78

    if-ge v2, v5, :cond_4

    if-nez v3, :cond_4

    .line 7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    .line 10
    const-string v3, "VPosBluetoothdevice bonded."

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v3, v0

    move v4, v1

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v6, 0xb

    const-wide/16 v7, 0x1f4

    if-ne v5, v6, :cond_1

    .line 13
    :try_start_1
    const-string v5, "VPosBluetoothbonding ..."

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 14
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    .line 18
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    if-nez v4, :cond_2

    .line 21
    :try_start_3
    const-string v5, "VPosBluetoothstart bond device"

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/b;->a(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 29
    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v4, v0

    goto :goto_1

    .line 30
    :catch_1
    move-exception v4

    move v4, v0

    goto :goto_1

    .line 14
    :catch_2
    move-exception v4

    move v4, v0

    goto :goto_1

    .line 30
    :cond_2
    :try_start_5
    const-string v5, "VPosBluetoothbond failed"

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v5

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    return v0

    :catch_4
    move-exception p1

    return v0
.end method

.method static synthetic b(Lcom/dspread/xpos/q0;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/q0;->a0:[B

    return-object p0
.end method

.method static synthetic c(Lcom/dspread/xpos/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/q0;->G()V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/q0;->R:Z

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/q0;->V:Lcom/dspread/xpos/bluetoothUtil/b;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bluetoothUtil/b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/dspread/xpos/q0;->R:Z

    .line 15
    :cond_1
    iget-boolean p1, p0, Lcom/dspread/xpos/q0;->R:Z

    return p1
.end method


# virtual methods
.method public A()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/q0;->Z:Z

    .line 6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 7
    iput-boolean v2, p0, Lcom/dspread/xpos/q0;->Z:Z

    return v2

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    .line 16
    :cond_1
    invoke-static {}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    move-result-object v1

    sget-object v3, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-ne v1, v3, :cond_2

    .line 17
    iput-boolean v2, p0, Lcom/dspread/xpos/q0;->Z:Z

    .line 18
    sput-boolean v0, Lcom/dspread/xpos/q0;->k0:Z

    return v0

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/dspread/xpos/q0;->P:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 22
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 23
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->s()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 26
    invoke-direct {p0, v1}, Lcom/dspread/xpos/q0;->a(Landroid/bluetooth/BluetoothDevice;)Z

    .line 36
    :cond_3
    sget-object v3, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTING:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {v3}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    .line 38
    new-instance v3, Lcom/dspread/xpos/bluetoothUtil/a;

    invoke-direct {v3, v1}, Lcom/dspread/xpos/bluetoothUtil/a;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    iput-object v3, p0, Lcom/dspread/xpos/q0;->U:Lcom/dspread/xpos/bluetoothUtil/a;

    .line 39
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move v1, v2

    .line 42
    :goto_0
    invoke-static {}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->NOCONNECT:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-eq v3, v4, :cond_5

    .line 43
    const-string v3, "!!!!!!!!BluetoothConnectState.NOCONNECT"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-ne v3, v4, :cond_4

    const-wide/16 v3, 0x64

    .line 46
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 50
    :goto_1
    new-instance v1, Lcom/dspread/xpos/bluetoothUtil/b;

    sget-object v3, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    iget-object v4, p0, Lcom/dspread/xpos/q0;->Y:Lcom/dspread/xpos/bluetoothUtil/b$a;

    invoke-direct {v1, v3, v4}, Lcom/dspread/xpos/bluetoothUtil/b;-><init>(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bluetoothUtil/b$a;)V

    iput-object v1, p0, Lcom/dspread/xpos/q0;->V:Lcom/dspread/xpos/bluetoothUtil/b;

    .line 51
    iput-boolean v0, v1, Lcom/dspread/xpos/bluetoothUtil/b;->d:Z

    .line 52
    iget-object v1, p0, Lcom/dspread/xpos/q0;->V:Lcom/dspread/xpos/bluetoothUtil/b;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 53
    sput-boolean v0, Lcom/dspread/xpos/q0;->k0:Z

    .line 54
    iget-object v0, p0, Lcom/dspread/xpos/q0;->P:Ljava/util/Set;

    sget-object v1, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 56
    :cond_4
    invoke-static {}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-ne v3, v4, :cond_5

    .line 57
    const-string/jumbo v0, "open false"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 58
    sput-boolean v2, Lcom/dspread/xpos/q0;->k0:Z

    goto :goto_3

    .line 63
    :cond_5
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 64
    sput-boolean v2, Lcom/dspread/xpos/q0;->k0:Z

    goto :goto_3

    :cond_6
    const-wide/16 v3, 0x1

    .line 69
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_2
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x4e20

    if-lt v1, v4, :cond_9

    .line 74
    sput-boolean v2, Lcom/dspread/xpos/q0;->k0:Z

    .line 79
    :goto_3
    sget-boolean v0, Lcom/dspread/xpos/q0;->k0:Z

    if-nez v0, :cond_7

    .line 83
    invoke-direct {p0}, Lcom/dspread/xpos/q0;->F()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/dspread/xpos/q0;->U:Lcom/dspread/xpos/bluetoothUtil/a;

    .line 86
    :cond_7
    sget-boolean v0, Lcom/dspread/xpos/q0;->k0:Z

    if-nez v0, :cond_8

    .line 87
    iput-boolean v2, p0, Lcom/dspread/xpos/q0;->Z:Z

    :cond_8
    return v0

    .line 69
    :cond_9
    move v1, v3

    goto :goto_0

    .line 87
    :cond_a
    :goto_4
    nop

    .line 88
    iput-boolean v2, p0, Lcom/dspread/xpos/q0;->Z:Z

    return v2
.end method

.method public B()[B
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "Read:readUpdateResponse"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/dspread/xpos/q0;->O()[B

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/dspread/xpos/q0;->M()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [B

    return-object v0
.end method

.method protected I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/q0;->T:Z

    return v0
.end method

.method protected J()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected K()V
    .locals 0

    return-void
.end method

.method protected L()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/q0;->V:Lcom/dspread/xpos/bluetoothUtil/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/dspread/xpos/bluetoothUtil/b;->d:Z

    :cond_0
    return-void
.end method

.method protected P()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/q0;->j0:Lcom/dspread/xpos/q0;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/q0;->V:Lcom/dspread/xpos/bluetoothUtil/b;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/dspread/xpos/bluetoothUtil/b;->d:Z

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/q0;->V:Lcom/dspread/xpos/bluetoothUtil/b;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetoothUtil/b;->a()V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/q0;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/q0;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    .line 17
    sget-object v1, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {v1}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    .line 18
    iget-object v1, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 19
    iget-object v1, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    iput-object v0, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method protected c()V
    .locals 3

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/q0;->b0:I

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/dspread/xpos/q0;->a0:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosBluetooth_2mode--]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosBluetooth_2mode--]------address is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/dspread/xpos/q0;->X:Z

    .line 14
    const-string p1, "[VPosBluetooth_2mode--]------address is null"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/dspread/xpos/q0;->d()V

    const/4 p1, 0x0

    .line 16
    sput-boolean p1, Lcom/dspread/xpos/q0;->k0:Z

    .line 17
    invoke-direct {p0}, Lcom/dspread/xpos/q0;->F()V

    .line 18
    iput-object v0, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const-string v0, "[VPosBluetooth_2mode] close()"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 3
    sget-boolean v0, Lcom/dspread/xpos/q0;->k0:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/q0;->S:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/dspread/xpos/q0;->k0:Z

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/q0;->d()V

    .line 2
    invoke-direct {p0}, Lcom/dspread/xpos/q0;->F()V

    return-void
.end method

.method public f([B)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/q0;->c()V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lcom/dspread/xpos/q0;->f0:Z

    if-nez v1, :cond_0

    .line 8
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dspread/xpos/q0;->d(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    .line 10
    :cond_0
    array-length v1, p1

    if-eqz v1, :cond_5

    const/16 v2, 0x400

    if-le v1, v2, :cond_1

    goto :goto_3

    .line 14
    :cond_1
    div-int/lit16 v2, v1, 0x80

    move v4, v0

    move v3, v2

    move v2, v1

    move v1, v4

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_3

    .line 17
    const/16 v1, 0x80

    new-array v3, v1, [B

    .line 18
    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dspread/xpos/q0;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 21
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, -0x80

    add-int/lit16 v4, v4, 0x80

    const-wide/16 v6, 0x14

    .line 28
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 14
    :goto_1
    move v3, v5

    goto :goto_0

    .line 28
    :cond_3
    if-eqz v2, :cond_4

    .line 34
    new-array v1, v2, [B

    .line 35
    invoke-static {p1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dspread/xpos/q0;->d(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v1

    .line 39
    :goto_2
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->o(Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/q0;->Q:Ljava/lang/String;

    return-object v0
.end method

.method protected j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/q0;->P:Ljava/util/Set;

    return-object v0
.end method

.method protected j(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/q0;->g0:Z

    return-void
.end method

.method protected k()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/q0;->T:Z

    return-void
.end method
