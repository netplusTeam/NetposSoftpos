.class public Lcom/dspread/xpos/p0;
.super Lcom/dspread/xpos/Vpos;
.source "VPosBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/p0$b;
    }
.end annotation


# static fields
.field public static final A0:I = 0x3b9aca05

.field public static final B0:I = 0x3b9aca06

.field public static final C0:I = 0x1

.field public static final D0:I = 0x2

.field private static E0:Landroid/bluetooth/BluetoothDevice; = null

.field private static final F0:I = 0x2800

.field private static final G0:I = 0x80

.field private static m0:Lcom/dspread/xpos/p0; = null

.field private static n0:Z = false

.field public static final o0:Ljava/lang/String; = "VPosBluetooth"

.field public static final p0:Ljava/lang/String; = "NOTIFY_UI"

.field public static final q0:Ljava/lang/String; = "INCOMING_MSG"

.field public static final r0:Ljava/lang/String; = "OUTGOING_MSG"

.field public static final s0:Ljava/lang/String; = "ALERT_MSG"

.field public static final t0:Ljava/lang/String; = "device_address"

.field public static final u0:Ljava/lang/String; = "disconnected_device_address"

.field public static final v0:I = 0x3b9aca01

.field public static final w0:I = 0x3b9aca02

.field public static final x0:I = 0x3b9aca03

.field public static final y0:I = 0x3b9aca04

.field public static final z0:Ljava/lang/String; = "toast"


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

.field public Q:Ljava/lang/String;

.field private R:Z

.field private S:Z

.field private T:Ljava/lang/Object;

.field private U:Z

.field private V:Lcom/dspread/xpos/bluetoothUtil/a;

.field private W:Lcom/dspread/xpos/bluetoothUtil/b;

.field private X:Z

.field private Y:Z

.field private Z:Lcom/dspread/xpos/bluetoothUtil/b$a;

.field private a0:Z

.field private volatile b0:[B

.field private c0:I

.field d0:[B

.field e0:I

.field f0:I

.field private g0:Z

.field private h0:Z

.field public i0:Z

.field private j0:Landroid/content/BroadcastReceiver;

.field private k0:Z

.field private l0:Ljava/lang/String;


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

    iput-object v0, p0, Lcom/dspread/xpos/p0;->P:Ljava/util/Set;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->R:Z

    .line 8
    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->S:Z

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/dspread/xpos/p0;->T:Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/c;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dspread/xpos/p0;->U:Z

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dspread/xpos/p0;->V:Lcom/dspread/xpos/bluetoothUtil/a;

    .line 129
    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->X:Z

    .line 201
    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->Y:Z

    .line 223
    iput-object v1, p0, Lcom/dspread/xpos/p0;->Z:Lcom/dspread/xpos/bluetoothUtil/b$a;

    .line 330
    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->a0:Z

    .line 488
    const/16 v2, 0x2800

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    .line 489
    iput v0, p0, Lcom/dspread/xpos/p0;->c0:I

    .line 679
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/dspread/xpos/p0;->d0:[B

    .line 680
    iput v0, p0, Lcom/dspread/xpos/p0;->e0:I

    .line 681
    iput v0, p0, Lcom/dspread/xpos/p0;->f0:I

    .line 735
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dspread/xpos/p0;->g0:Z

    .line 810
    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->h0:Z

    .line 811
    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->i0:Z

    .line 843
    new-instance v2, Lcom/dspread/xpos/p0$a;

    invoke-direct {v2, p0}, Lcom/dspread/xpos/p0$a;-><init>(Lcom/dspread/xpos/p0;)V

    iput-object v2, p0, Lcom/dspread/xpos/p0;->j0:Landroid/content/BroadcastReceiver;

    .line 879
    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->k0:Z

    .line 880
    new-instance v0, Lcom/dspread/xpos/p0$b;

    invoke-direct {v0, p0, v1}, Lcom/dspread/xpos/p0$b;-><init>(Lcom/dspread/xpos/p0;Lcom/dspread/xpos/p0$a;)V

    iput-object v0, p0, Lcom/dspread/xpos/p0;->Z:Lcom/dspread/xpos/bluetoothUtil/b$a;

    return-void
.end method

.method private F()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->S()V

    .line 2
    const-string v0, "-------1111111------disconnectbt"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->X:Z

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    const-string v0, "-------1111111------blueToothAddress"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/p0;->W:Lcom/dspread/xpos/bluetoothUtil/b;

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x96

    .line 8
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/dspread/xpos/p0;->W:Lcom/dspread/xpos/bluetoothUtil/b;

    iput-boolean v1, v0, Lcom/dspread/xpos/bluetoothUtil/b;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/p0;->W:Lcom/dspread/xpos/bluetoothUtil/b;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetoothUtil/b;->a()V

    .line 17
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {v0}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/dspread/xpos/p0;->W:Lcom/dspread/xpos/bluetoothUtil/b;

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/p0;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothSocket;

    if-eqz v3, :cond_0

    .line 22
    :try_start_2
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/p0;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 30
    iput-object v2, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    const-wide/16 v2, 0xc8

    .line 32
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :cond_2
    :goto_3
    nop

    .line 38
    iput-boolean v1, p0, Lcom/dspread/xpos/p0;->X:Z

    return-void
.end method

.method private G()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/p0;->O()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, "\u6ca1\u6709\u8fde\u63a5"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->c()V

    return-void

    .line 8
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 9
    const-string v0, "b.length == 0"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->c()V

    return-void

    .line 13
    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 14
    const-string v0, "b.length ==1"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->c()V

    return-void

    :cond_2
    nop

    .line 19
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 20
    const-string v3, "doTrade()setReceiver(false);"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->a([B)Lcom/dspread/xpos/j;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 23
    invoke-virtual {v3}, Lcom/dspread/xpos/j;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    .line 26
    :cond_3
    invoke-virtual {v3}, Lcom/dspread/xpos/j;->b()B

    move-result v4

    const/4 v5, 0x2

    .line 27
    invoke-virtual {v3, v5, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v5

    const/4 v6, 0x3

    .line 28
    invoke-virtual {v3, v6, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v6

    .line 29
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x4

    invoke-virtual {v3, v8, v6}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v6, v8

    .line 30
    invoke-virtual {v3, v6, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-static {v8}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v8

    add-int/2addr v6, v2

    .line 31
    invoke-virtual {v3, v6, v8}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mod:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "commandID:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/Vpos;->i(Z)V

    .line 36
    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v1, :cond_8

    const/16 v6, 0x33

    if-ne v4, v6, :cond_4

    .line 38
    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->K1()V

    .line 39
    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->T0()V

    goto :goto_0

    :cond_4
    const/16 v6, 0x28

    if-ne v4, v6, :cond_5

    .line 41
    sget-object v3, Lcom/dspread/xpos/QPOSService$TransactionResult;->CANCEL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    goto :goto_0

    :cond_5
    const/16 v6, 0x20

    if-ne v4, v6, :cond_6

    .line 43
    sget-object v3, Lcom/dspread/xpos/QPOSService$Error;->DEVICE_RESET:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v1, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    goto :goto_0

    :cond_6
    const/16 v6, 0x48

    if-ne v4, v6, :cond_7

    .line 45
    sget-object v3, Lcom/dspread/xpos/QPOSService$TransactionResult;->NFC_TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1, v3}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->i(Z)V

    goto :goto_0

    .line 48
    :cond_7
    invoke-virtual {v1, v5, v7, v3}, Lcom/dspread/xpos/QPOSService;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_8
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

    .line 52
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->l(Z)V

    :cond_9
    :goto_1
    return-void
.end method

.method protected static H()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/p0;->E0:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public static I()Lcom/dspread/xpos/p0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/p0;->m0:Lcom/dspread/xpos/p0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/p0;

    invoke-direct {v0}, Lcom/dspread/xpos/p0;-><init>()V

    sput-object v0, Lcom/dspread/xpos/p0;->m0:Lcom/dspread/xpos/p0;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/p0;->m0:Lcom/dspread/xpos/p0;

    return-object v0
.end method

.method private N()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-boolean v2, p0, Lcom/dspread/xpos/p0;->R:Z

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readNormalResponse = isReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isWrite "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/dspread/xpos/p0;->R:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->K()Z

    move-result v3

    if-nez v3, :cond_1

    .line 19
    const-string v1, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 21
    new-array v0, v0, [B

    return-object v0

    .line 25
    :cond_1
    iget v3, p0, Lcom/dspread/xpos/p0;->c0:I

    if-lez v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 27
    new-array v2, v3, [B

    .line 28
    iget-object v4, p0, Lcom/dspread/xpos/p0;->b0:[B

    invoke-static {v4, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v2, 0x3

    if-le v3, v2, :cond_6

    .line 33
    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    aget-byte v2, v2, v0

    const/16 v4, 0x4d

    if-eq v2, v4, :cond_3

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read buf len == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dspread/xpos/p0;->c0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read buf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dspread/xpos/p0;->b0:[B

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 35
    iget-boolean v2, p0, Lcom/dspread/xpos/Vpos;->t:Z

    if-eqz v2, :cond_8

    .line 36
    iget v1, p0, Lcom/dspread/xpos/p0;->c0:I

    new-array v1, v1, [B

    .line 37
    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    iget v3, p0, Lcom/dspread/xpos/p0;->c0:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 41
    :cond_3
    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    const/4 v4, 0x2

    aget-byte v2, v2, v4

    if-gez v2, :cond_4

    add-int/lit16 v2, v2, 0x100

    .line 45
    :cond_4
    iget-object v4, p0, Lcom/dspread/xpos/p0;->b0:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x4

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "need_read_len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    if-ne v2, v3, :cond_5

    .line 49
    new-array v1, v3, [B

    .line 50
    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    if-ge v2, v3, :cond_6

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read >> need_read_len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " len ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 58
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 59
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_7
    move v2, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 64
    new-array v0, v0, [B

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readNormalResponse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    move-object v1, v0

    .line 69
    :cond_8
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

.method private O()[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->K()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    const-string v1, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    iget v1, p0, Lcom/dspread/xpos/p0;->c0:I

    if-lez v1, :cond_1

    .line 7
    iget v2, p0, Lcom/dspread/xpos/p0;->f0:I

    if-eq v1, v2, :cond_1

    .line 8
    new-array v2, v1, [B

    .line 9
    iget-object v3, p0, Lcom/dspread/xpos/p0;->b0:[B

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_1
    iput v1, p0, Lcom/dspread/xpos/p0;->f0:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    .line 14
    const-string/jumbo v2, "\u90e8\u5206\u6570\u636e\u5224\u65ad"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    aget-byte v2, v2, v0

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_2

    .line 16
    iget-object v0, p0, Lcom/dspread/xpos/p0;->d0:[B

    return-object v0

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    iput v2, p0, Lcom/dspread/xpos/p0;->e0:I

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5e94\u8be5\u8bfb\u53d6\u7684\u6570\u636e\u957f\u5ea6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dspread/xpos/p0;->e0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 21
    iget v2, p0, Lcom/dspread/xpos/p0;->e0:I

    if-gez v2, :cond_3

    add-int/lit16 v2, v2, 0x100

    .line 22
    iput v2, p0, Lcom/dspread/xpos/p0;->e0:I

    .line 24
    :cond_3
    iget v2, p0, Lcom/dspread/xpos/p0;->e0:I

    iget-object v3, p0, Lcom/dspread/xpos/p0;->b0:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    .line 25
    iput v2, p0, Lcom/dspread/xpos/p0;->e0:I

    if-ne v2, v1, :cond_4

    .line 28
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/dspread/xpos/p0;->d0:[B

    .line 29
    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    iget-object v3, p0, Lcom/dspread/xpos/p0;->d0:[B

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    if-ge v2, v1, :cond_5

    .line 31
    new-array v1, v4, [B

    iput-object v1, p0, Lcom/dspread/xpos/p0;->d0:[B

    .line 35
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 36
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 37
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/p0;->d0:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 43
    const-string/jumbo v1, "\u5f02\u5e38\u8fd4\u56de\u6570\u636e\u4f4d0"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 45
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/p0;->d0:[B

    .line 49
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/p0;->d0:[B

    return-object v0
.end method

.method private declared-synchronized P()[B
    .locals 8

    monitor-enter p0

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read buf len == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dspread/xpos/p0;->c0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 4
    iget-boolean v2, p0, Lcom/dspread/xpos/p0;->R:Z

    if-nez v2, :cond_0

    .line 5
    const-string v2, "Read:!isWrite"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v2, 0x2

    .line 8
    :try_start_2
    new-array v3, v2, [B

    move v4, v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->K()Z

    move-result v5

    if-nez v5, :cond_2

    .line 13
    const-string v2, "[VPosBluetooth--]read >> is not connected"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update isNeedQuit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 19
    new-array v0, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 22
    :cond_3
    :try_start_3
    iget v5, p0, Lcom/dspread/xpos/p0;->c0:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_8

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read bug 6 =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dspread/xpos/p0;->b0:[B

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 24
    iget-object v4, p0, Lcom/dspread/xpos/p0;->b0:[B

    aget-byte v4, v4, v0

    const/16 v5, 0x44

    if-eq v4, v5, :cond_4

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "head[0] != \'D\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 26
    new-array v0, v0, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 29
    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/dspread/xpos/p0;->b0:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v6, 0x50

    if-eq v4, v6, :cond_5

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "head[1] != \'P\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    aget-byte v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 31
    new-array v0, v0, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    const/4 v4, 0x4

    move v5, v0

    :goto_0
    if-ge v5, v2, :cond_7

    .line 36
    :try_start_5
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 37
    const-string/jumbo v1, "\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f66"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 38
    new-array v0, v0, [B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 40
    :cond_6
    :try_start_6
    iget-object v6, p0, Lcom/dspread/xpos/p0;->b0:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    aput-byte v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_0

    .line 42
    :cond_7
    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    .line 46
    :cond_8
    iget v5, p0, Lcom/dspread/xpos/p0;->c0:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_9

    if-nez v4, :cond_1

    .line 47
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "outData read_buf_len11: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/dspread/xpos/p0;->c0:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 48
    iget v5, p0, Lcom/dspread/xpos/p0;->c0:I

    add-int/lit8 v6, v4, 0xc

    if-ne v5, v6, :cond_1

    .line 50
    new-array v1, v6, [B

    const-wide/16 v2, 0xa

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 52
    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    invoke-static {v2, v0, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read outData11: "

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

    :goto_1
    const/16 v4, 0xb

    if-ge v2, v6, :cond_b

    if-eq v2, v4, :cond_a

    .line 58
    aget-byte v4, v1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
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

    .line 64
    aget-byte v2, v1, v4

    if-eq v3, v2, :cond_c

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

    .line 67
    new-array v0, v0, [B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    .line 69
    :cond_c
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read outData22: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v1

    .line 77
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 78
    new-array v1, v0, [B

    .line 81
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------------------return"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "return-----------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v1

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/dspread/xpos/p0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/p0;->c0:I

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/p0;I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/p0;->c0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dspread/xpos/p0;->c0:I

    return v0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10

    const-string v0, "BL-915441"

    .line 4
    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "HUAWEI D2-6070"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Lenovo A798t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPosBluetoothbondtime===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 9
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/b;->b(Landroid/bluetooth/BluetoothDevice;)V

    .line 11
    const-string v0, "+++++BluetoothDevice"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    :cond_0
    move v0, v4

    move v2, v0

    move v5, v2

    :goto_0
    const/16 v6, 0x78

    if-ge v0, v6, :cond_5

    if-nez v2, :cond_5

    .line 15
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 18
    const-string v2, "device bonded."

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move v2, v1

    move v5, v4

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v7, 0xb

    const-wide/16 v8, 0x1f4

    if-ne v6, v7, :cond_2

    .line 21
    :try_start_1
    const-string v6, "VPosBluetoothbonding ..."

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 22
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1

    .line 26
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v7, 0xa

    if-ne v6, v7, :cond_4

    if-nez v5, :cond_3

    .line 29
    :try_start_3
    const-string v6, "VPosBluetoothstart bond device"

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lcom/dspread/xpos/bluetooth2mode/b;->a(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 37
    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v5, v1

    goto :goto_1

    .line 38
    :catch_1
    move-exception v5

    move v5, v1

    goto :goto_1

    .line 22
    :catch_2
    move-exception v5

    move v5, v1

    goto :goto_1

    .line 38
    :cond_3
    :try_start_5
    const-string v6, "VPosBluetoothbond failed"

    invoke-static {v6}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v6

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    return v1

    :cond_6
    return v4

    :cond_7
    return v1

    :catch_4
    move-exception p1

    return v1
.end method

.method static synthetic a(Lcom/dspread/xpos/p0;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/dspread/xpos/p0;->k0:Z

    return p1
.end method

.method static synthetic b(Lcom/dspread/xpos/p0;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/p0;->b0:[B

    return-object p0
.end method

.method static synthetic c(Lcom/dspread/xpos/p0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/p0;->l0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/dspread/xpos/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/p0;->G()V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->R:Z

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/p0;->W:Lcom/dspread/xpos/bluetoothUtil/b;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bluetoothUtil/b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/dspread/xpos/p0;->R:Z

    .line 16
    :cond_1
    iget-boolean p1, p0, Lcom/dspread/xpos/p0;->R:Z

    return p1
.end method

.method static synthetic e(Lcom/dspread/xpos/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/p0;->F()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->a0:Z

    .line 6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 7
    iput-boolean v2, p0, Lcom/dspread/xpos/p0;->a0:Z

    return v2

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    .line 16
    :cond_1
    invoke-static {}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    move-result-object v1

    sget-object v3, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-ne v1, v3, :cond_2

    .line 17
    iput-boolean v2, p0, Lcom/dspread/xpos/p0;->a0:Z

    .line 18
    sput-boolean v0, Lcom/dspread/xpos/p0;->n0:Z

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5df2\u8fde\u63a5\u8fd4\u56detrue blueToothAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v0

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/dspread/xpos/p0;->P:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 23
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 26
    sput-object v1, Lcom/dspread/xpos/p0;->E0:Landroid/bluetooth/BluetoothDevice;

    .line 27
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->s()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 28
    const-string v3, "isAutoBondBeforeConnect"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->i()I

    move-result v3

    if-le v3, v0, :cond_5

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->q()I

    move-result v3

    if-eqz v3, :cond_5

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conect bluetooth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->q()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    .line 35
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    invoke-static {v1}, Lcom/dspread/xpos/bluetooth2mode/b;->b(Landroid/bluetooth/BluetoothDevice;)V

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BondUtil.removeBond(device); "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 39
    :cond_3
    const-string/jumbo v3, "removebond+++++BluetoothDevice"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :cond_4
    const-wide/16 v3, 0x7d0

    .line 42
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 48
    :cond_5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v1}, Lcom/dspread/xpos/p0;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pair status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const-string/jumbo v4, "pair fail"

    if-nez v3, :cond_6

    .line 54
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->i()I

    move-result v5

    if-eq v5, v0, :cond_6

    .line 55
    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return v2

    :cond_6
    if-nez v3, :cond_7

    .line 59
    invoke-static {v4}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    return v2

    .line 68
    :cond_7
    const-string/jumbo v3, "\u5f00\u59cb\u94fe\u63a5 +++++++++++++++++++++++"

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    .line 70
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 75
    :goto_1
    sget-object v3, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTING:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {v3}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    .line 77
    new-instance v3, Lcom/dspread/xpos/bluetoothUtil/a;

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->s()Z

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/dspread/xpos/bluetoothUtil/a;-><init>(Landroid/bluetooth/BluetoothDevice;Z)V

    iput-object v3, p0, Lcom/dspread/xpos/p0;->V:Lcom/dspread/xpos/bluetoothUtil/a;

    .line 78
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move v1, v2

    .line 81
    :goto_2
    invoke-static {}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->NOCONNECT:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-eq v3, v4, :cond_9

    .line 83
    invoke-static {}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-ne v3, v4, :cond_8

    const-wide/16 v3, 0x64

    .line 85
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 89
    :goto_3
    const-string/jumbo v1, "\u5f00\u542f\u7ebf\u7a0b\u67e5\u8be2pos\u72b6\u6001"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 90
    new-instance v1, Lcom/dspread/xpos/bluetoothUtil/b;

    sget-object v3, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    iget-object v4, p0, Lcom/dspread/xpos/p0;->Z:Lcom/dspread/xpos/bluetoothUtil/b$a;

    invoke-direct {v1, v3, v4}, Lcom/dspread/xpos/bluetoothUtil/b;-><init>(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bluetoothUtil/b$a;)V

    iput-object v1, p0, Lcom/dspread/xpos/p0;->W:Lcom/dspread/xpos/bluetoothUtil/b;

    .line 91
    iput-boolean v0, v1, Lcom/dspread/xpos/bluetoothUtil/b;->d:Z

    .line 92
    iget-object v1, p0, Lcom/dspread/xpos/p0;->W:Lcom/dspread/xpos/bluetoothUtil/b;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 93
    sput-boolean v0, Lcom/dspread/xpos/p0;->n0:Z

    .line 94
    iget-object v0, p0, Lcom/dspread/xpos/p0;->P:Ljava/util/Set;

    sget-object v1, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 96
    :cond_8
    invoke-static {}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->b()Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    move-result-object v3

    sget-object v4, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-ne v3, v4, :cond_9

    .line 97
    const-string/jumbo v0, "open false+++"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 98
    sput-boolean v2, Lcom/dspread/xpos/p0;->n0:Z

    goto :goto_5

    .line 103
    :cond_9
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 104
    sput-boolean v2, Lcom/dspread/xpos/p0;->n0:Z

    goto :goto_5

    :cond_a
    const-wide/16 v3, 0x1

    .line 109
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    :goto_4
    add-int/lit8 v3, v1, 0x1

    .line 113
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->h()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    mul-int/lit16 v4, v4, 0x3e8

    if-lt v1, v4, :cond_d

    .line 114
    sput-boolean v2, Lcom/dspread/xpos/p0;->n0:Z

    .line 115
    const-string/jumbo v0, "\u65f6\u95f4\u8d85\u51fa\u8fde\u63a5"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 120
    :goto_5
    sget-boolean v0, Lcom/dspread/xpos/p0;->n0:Z

    if-nez v0, :cond_b

    .line 124
    invoke-direct {p0}, Lcom/dspread/xpos/p0;->F()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/dspread/xpos/p0;->V:Lcom/dspread/xpos/bluetoothUtil/a;

    .line 127
    :cond_b
    sget-boolean v0, Lcom/dspread/xpos/p0;->n0:Z

    if-nez v0, :cond_c

    .line 128
    iput-boolean v2, p0, Lcom/dspread/xpos/p0;->a0:Z

    :cond_c
    return v0

    .line 113
    :cond_d
    move v1, v3

    goto :goto_2

    .line 128
    :cond_e
    :goto_6
    nop

    .line 129
    iput-boolean v2, p0, Lcom/dspread/xpos/p0;->a0:Z

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
    invoke-direct {p0}, Lcom/dspread/xpos/p0;->P()[B

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    const-string/jumbo v0, "readNormalResponse :read"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/dspread/xpos/p0;->N()[B

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

.method protected J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/p0;->U:Z

    return v0
.end method

.method protected K()Z
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

.method protected L()V
    .locals 0

    return-void
.end method

.method protected M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/p0;->W:Lcom/dspread/xpos/bluetoothUtil/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/dspread/xpos/bluetoothUtil/b;->d:Z

    :cond_0
    return-void
.end method

.method protected Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/p0;->j0:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/p0;->j0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->S:Z

    :cond_0
    return-void
.end method

.method protected R()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/p0;->m0:Lcom/dspread/xpos/p0;

    return-void
.end method

.method protected S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/p0;->j0:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dspread/xpos/p0;->S:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/p0;->j0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/dspread/xpos/p0;->j0:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/dspread/xpos/p0;->S:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/dspread/xpos/p0;->l0:Ljava/lang/String;

    .line 40
    iget-boolean p1, p0, Lcom/dspread/xpos/p0;->k0:Z

    return p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/p0;->W:Lcom/dspread/xpos/bluetoothUtil/b;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/dspread/xpos/bluetoothUtil/b;->d:Z

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/p0;->W:Lcom/dspread/xpos/bluetoothUtil/b;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetoothUtil/b;->a()V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/p0;->P:Ljava/util/Set;

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
    iget-object v0, p0, Lcom/dspread/xpos/p0;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    .line 17
    sget-object v1, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {v1}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    .line 18
    iget-object v1, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 19
    iget-object v1, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    iput-object v0, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method protected c()V
    .locals 3

    .line 20
    iget v0, p0, Lcom/dspread/xpos/p0;->c0:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 21
    :goto_0
    iget v2, p0, Lcom/dspread/xpos/p0;->c0:I

    if-ge v0, v2, :cond_1

    .line 22
    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/dspread/xpos/p0;->b0:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 29
    iput v1, p0, Lcom/dspread/xpos/p0;->c0:I

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VPosBluetooth--]"

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

    const-string v1, "[VPosBluetooth]------address is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->Q()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/dspread/xpos/p0;->Y:Z

    .line 15
    const-string p1, "[VPosBluetooth-]------address is null"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->d()V

    const/4 p1, 0x0

    .line 17
    sput-boolean p1, Lcom/dspread/xpos/p0;->n0:Z

    .line 18
    invoke-direct {p0}, Lcom/dspread/xpos/p0;->F()V

    .line 19
    iput-object v0, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    const-string v0, "[VPosBluetooth] close()"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 4
    sget-boolean v0, Lcom/dspread/xpos/p0;->n0:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/p0;->T:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6
    :try_start_0
    sput-boolean v1, Lcom/dspread/xpos/p0;->n0:Z

    .line 7
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

    .line 2
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->d()V

    .line 3
    invoke-direct {p0}, Lcom/dspread/xpos/p0;->F()V

    return-void
.end method

.method public f([B)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/p0;->c()V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->l(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    .line 5
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

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

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/dspread/xpos/p0;->g0:Z

    if-nez v1, :cond_1

    .line 9
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dspread/xpos/p0;->d(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    .line 11
    :cond_1
    array-length v1, p1

    if-eqz v1, :cond_6

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    goto :goto_3

    .line 15
    :cond_2
    div-int/lit16 v2, v1, 0x80

    move v4, v0

    move v3, v2

    move v2, v1

    move v1, v4

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_4

    .line 18
    const/16 v1, 0x80

    new-array v3, v1, [B

    .line 19
    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dspread/xpos/p0;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 22
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, -0x80

    add-int/lit16 v4, v4, 0x80

    const-wide/16 v6, 0x14

    .line 29
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 15
    :goto_1
    move v3, v5

    goto :goto_0

    .line 29
    :cond_4
    if-eqz v2, :cond_5

    .line 35
    new-array v1, v2, [B

    .line 36
    invoke-static {p1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dspread/xpos/p0;->d(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    :cond_5
    move p1, v1

    .line 40
    :goto_2
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/Vpos;->o(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/dspread/xpos/p0;->P:Ljava/util/Set;

    return-object v0
.end method

.method protected j(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/p0;->h0:Z

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
    iput-boolean p1, p0, Lcom/dspread/xpos/p0;->U:Z

    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/p0;->g0:Z

    return-void
.end method
