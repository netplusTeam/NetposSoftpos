.class public Lcom/dspread/xpos/VPosBluetoothBLE;
.super Lcom/dspread/xpos/Vpos;
.source "VPosBluetoothBLE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;
    }
.end annotation


# static fields
.field public static final A0:Ljava/lang/String; = "VPosBluetoothBLEpos_"

.field public static final B0:Ljava/lang/String; = "NOTIFY_UI"

.field public static final C0:Ljava/lang/String; = "INCOMING_MSG"

.field public static final D0:Ljava/lang/String; = "OUTGOING_MSG"

.field public static final E0:Ljava/lang/String; = "ALERT_MSG"

.field public static final F0:Ljava/lang/String; = "device_address"

.field public static final G0:Ljava/lang/String; = "disconnected_device_address"

.field public static final H0:I = 0x3b9aca01

.field public static final I0:I = 0x3b9aca02

.field public static final J0:I = 0x3b9aca03

.field public static final K0:I = 0x3b9aca04

.field public static final L0:Ljava/lang/String; = "toast"

.field public static final M0:I = 0x3b9aca05

.field public static final N0:I = 0x3b9aca06

.field public static final O0:I = 0x1

.field public static final P0:I = 0x2

.field private static final Q0:I = 0x2800

.field private static final R0:Ljava/util/UUID;

.field private static y0:Lcom/dspread/xpos/VPosBluetoothBLE; = null

.field private static z0:Z = false


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

.field private T:Landroid/content/Context;

.field private U:Z

.field private V:Lcom/dspread/xpos/QPOSService;

.field private W:Ljava/lang/String;

.field private X:Landroid/bluetooth/BluetoothGatt;

.field private Y:Landroid/bluetooth/BluetoothDevice;

.field private Z:Ljava/lang/String;

.field private a0:Ljava/lang/String;

.field private b0:Ljava/lang/String;

.field private c0:Ljava/lang/String;

.field private d0:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private e0:Z

.field private f0:Z

.field private g0:Landroid/os/Handler;

.field private h0:Landroid/bluetooth/BluetoothAdapter;

.field private i0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private j0:Landroid/bluetooth/BluetoothManager;

.field private k0:Ljava/lang/Runnable;

.field private l0:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private m0:[B

.field private final n0:Landroid/bluetooth/BluetoothGattCallback;

.field private o0:Z

.field private p0:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

.field private volatile q0:[B

.field private r0:I

.field private s0:I

.field private t0:I

.field private u0:[B

.field private v0:I

.field private w0:Z

.field public x0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "49535343-fe7d-4ae5-8fa9-9fafd205e455"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE;->R0:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->P:Ljava/util/Set;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->Q:Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->R:Z

    .line 8
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->S:Ljava/lang/Object;

    .line 18
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->U:Z

    .line 30
    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->W:Ljava/lang/String;

    .line 34
    const-string v0, "49535343-fe7d-4ae5-8fa9-9fafd205e455"

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->Z:Ljava/lang/String;

    .line 35
    const-string v0, "49535343-8841-43f4-a8d4-ecbe34729bb3"

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->a0:Ljava/lang/String;

    .line 36
    const-string v0, "49535343-1e4d-4bd9-ba61-23c647249616"

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->b0:Ljava/lang/String;

    .line 37
    const-string v0, "49535343-6daa-4d02-abf6-19569aca69fe"

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->c0:Ljava/lang/String;

    .line 139
    iput-boolean v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->e0:Z

    .line 158
    iput-boolean v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->f0:Z

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->i0:Ljava/util/List;

    .line 180
    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$a;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/VPosBluetoothBLE$a;-><init>(Lcom/dspread/xpos/VPosBluetoothBLE;)V

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->k0:Ljava/lang/Runnable;

    .line 225
    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$b;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/VPosBluetoothBLE$b;-><init>(Lcom/dspread/xpos/VPosBluetoothBLE;)V

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->l0:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 287
    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE$c;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/VPosBluetoothBLE$c;-><init>(Lcom/dspread/xpos/VPosBluetoothBLE;)V

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->n0:Landroid/bluetooth/BluetoothGattCallback;

    .line 522
    iput-boolean v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->o0:Z

    .line 523
    sget-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->NONE:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->p0:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    .line 632
    const/16 v0, 0x2800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    .line 633
    iput v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->r0:I

    .line 806
    iput v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->s0:I

    .line 807
    iput v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->t0:I

    .line 808
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->u0:[B

    .line 854
    const/16 v0, 0x10

    iput v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->v0:I

    .line 928
    iput-boolean v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->w0:Z

    .line 929
    iput-boolean v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->x0:Z

    .line 930
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->g0:Landroid/os/Handler;

    return-void
.end method

.method private I()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->e0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->e0:Z

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->Q:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->H()V

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->e0:Z

    return-void
.end method

.method private J()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->R()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    const-string/jumbo v0, "\u6ca1\u6709\u8fde\u63a5"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->c()V

    return-void

    .line 8
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 9
    const-string v0, "b.length == 0"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->c()V

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
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->c()V

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
    iput v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->s0:I

    .line 21
    iput v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->t0:I

    .line 22
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->a([B)Lcom/dspread/xpos/j;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 23
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 26
    :cond_3
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/4 v4, 0x2

    .line 27
    invoke-virtual {v1, v4, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    const/4 v5, 0x3

    .line 28
    invoke-virtual {v1, v5, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v5

    .line 29
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v5}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    add-int/2addr v5, v7

    .line 30
    invoke-virtual {v1, v5, v2}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v7

    add-int/2addr v5, v2

    .line 31
    invoke-virtual {v1, v5, v7}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 33
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

    .line 34
    iget-object v5, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v5, :cond_7

    const/16 v7, 0x33

    if-ne v3, v7, :cond_4

    .line 36
    invoke-virtual {v5}, Lcom/dspread/xpos/QPOSService;->K1()V

    .line 37
    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->T0()V

    goto :goto_0

    :cond_4
    const/16 v7, 0x28

    if-ne v3, v7, :cond_5

    .line 39
    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CANCEL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v5, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$TransactionResult;)V

    goto :goto_0

    :cond_5
    const/16 v7, 0x20

    if-ne v3, v7, :cond_6

    .line 41
    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->DEVICE_RESET:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v5, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    goto :goto_0

    .line 43
    :cond_6
    invoke-virtual {v5, v4, v6, v1}, Lcom/dspread/xpos/QPOSService;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_7
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

    .line 48
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->l(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method protected static L()Lcom/dspread/xpos/VPosBluetoothBLE;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/VPosBluetoothBLE;->y0:Lcom/dspread/xpos/VPosBluetoothBLE;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/VPosBluetoothBLE;

    invoke-direct {v0}, Lcom/dspread/xpos/VPosBluetoothBLE;-><init>()V

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE;->y0:Lcom/dspread/xpos/VPosBluetoothBLE;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/VPosBluetoothBLE;->y0:Lcom/dspread/xpos/VPosBluetoothBLE;

    return-object v0
.end method

.method private M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private Q()[B
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
    iget-boolean v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->R:Z

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readNormalResponse--isReceiver--isWrite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->R:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-object v1

    :cond_0
    move v2, v0

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->O()Z

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
    iget v3, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->r0:I

    if-lez v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 24
    new-array v2, v3, [B

    .line 25
    iget-object v4, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    invoke-static {v4, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v2, 0x3

    if-le v3, v2, :cond_6

    .line 30
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    aget-byte v2, v2, v0

    const/16 v4, 0x4d

    if-eq v2, v4, :cond_3

    .line 31
    const-string v2, "[VPosBluetoothble--]read_buf[0] != \'M\'"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_3
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    const/4 v4, 0x2

    aget-byte v2, v2, v4

    if-gez v2, :cond_4

    add-int/lit16 v2, v2, 0x100

    .line 38
    :cond_4
    iget-object v4, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x4

    if-ne v2, v3, :cond_5

    .line 42
    new-array v1, v3, [B

    .line 43
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    if-ge v2, v3, :cond_6

    .line 46
    const-string v2, "[VPosBluetooth_2mode--]need_read_len < len"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 52
    const-string v1, "[VPosBluetooth_2mode--]read >> isNeedQuit"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 53
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_7
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .line 58
    new-array v0, v0, [B

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VPosBluetoothble--]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    move-object v1, v0

    .line 62
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VposBle Read:"

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

.method private R()[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->O()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    const-string v1, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    iget v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->r0:I

    if-lez v1, :cond_1

    .line 7
    iget v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->t0:I

    if-eq v1, v2, :cond_1

    .line 8
    new-array v2, v1, [B

    .line 9
    iget-object v3, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_1
    iput v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->t0:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    .line 14
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    aget-byte v2, v2, v0

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_2

    .line 15
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->u0:[B

    return-object v0

    .line 17
    :cond_2
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    iput v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->s0:I

    if-gez v2, :cond_3

    add-int/lit16 v2, v2, 0x100

    .line 19
    iput v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->s0:I

    .line 21
    :cond_3
    iget v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->s0:I

    iget-object v3, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    .line 22
    iput v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->s0:I

    if-ne v2, v1, :cond_4

    .line 25
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->u0:[B

    .line 26
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    iget-object v3, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->u0:[B

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    if-ge v2, v1, :cond_5

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

    iput-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->u0:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 36
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->u0:[B

    .line 39
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->u0:[B

    return-object v0
.end method

.method private S()[B
    .locals 8

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->R:Z

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
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->O()Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    const-string v2, "[VPosBluetooth_2mode--]read >> is not connected"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    goto/16 :goto_2

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
    iget v5, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->r0:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_8

    const-wide/16 v4, 0xa

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 22
    iget-object v4, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    aget-byte v4, v4, v0

    const/16 v5, 0x44

    if-eq v4, v5, :cond_4

    .line 23
    const-string v1, "head[0] != \'D\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 24
    new-array v0, v0, [B

    return-object v0

    .line 27
    :cond_4
    iget-object v4, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x50

    if-eq v4, v5, :cond_5

    .line 28
    const-string v1, "head[1] != \'P\'"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 29
    new-array v0, v0, [B

    return-object v0

    :cond_5
    const/4 v4, 0x4

    move v5, v0

    :goto_0
    if-ge v5, v2, :cond_7

    .line 34
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 35
    const-string/jumbo v1, "\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f6\u8d85\u65f66"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 36
    new-array v0, v0, [B

    return-object v0

    .line 38
    :cond_6
    iget-object v6, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    aput-byte v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_0

    .line 40
    :cond_7
    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v4

    .line 44
    :cond_8
    iget v5, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->r0:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_9

    if-nez v4, :cond_1

    :cond_9
    add-int/lit8 v6, v4, 0xc

    if-ne v5, v6, :cond_1

    .line 48
    new-array v1, v6, [B

    .line 49
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    invoke-static {v2, v0, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
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

    :goto_1
    const/16 v4, 0xb

    if-ge v2, v6, :cond_b

    if-eq v2, v4, :cond_a

    .line 55
    aget-byte v4, v1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
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

    .line 61
    aget-byte v2, v1, v4

    if-eq v3, v2, :cond_c

    .line 62
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

    .line 63
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_c
    return-object v1

    :catch_0
    move-exception v1

    .line 73
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

    .line 74
    new-array v1, v0, [B

    :goto_2
    return-object v1
.end method

.method static synthetic a(Lcom/dspread/xpos/VPosBluetoothBLE;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->v0:I

    return p1
.end method

.method static synthetic a(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->l0:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object p0
.end method

.method static synthetic a(Lcom/dspread/xpos/VPosBluetoothBLE;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->d0:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic a(Lcom/dspread/xpos/VPosBluetoothBLE;Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;)Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->p0:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/dspread/xpos/VPosBluetoothBLE;[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/dspread/xpos/VPosBluetoothBLE;->g([B)V

    return-void
.end method

.method private a([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 24
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 29
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 30
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    .line 31
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->m0:[B

    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 32
    :cond_3
    :goto_1
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->m0:[B

    .line 33
    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method static synthetic b(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->h0:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->a0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->b0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->c0:Ljava/lang/String;

    return-object p0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->c()V

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->R:Z

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->d0:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {p1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->d0:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 9
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->d0:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 11
    iput-boolean v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->R:Z

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->R:Z

    return p1
.end method

.method static synthetic f(Lcom/dspread/xpos/VPosBluetoothBLE;)Lcom/dspread/xpos/QPOSService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->V:Lcom/dspread/xpos/QPOSService;

    return-object p0
.end method

.method static synthetic g(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->i0:Ljava/util/List;

    return-object p0
.end method

.method private g([B)V
    .locals 4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateReceivedData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 4
    array-length v0, p1

    .line 5
    iget v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->r0:I

    add-int/2addr v1, v0

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

    iget v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->r0:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->r0:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->r0:I

    .line 8
    new-array v1, v0, [B

    .line 9
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0, v3}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 13
    invoke-direct {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->J()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/dspread/xpos/VPosBluetoothBLE;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic i(Lcom/dspread/xpos/VPosBluetoothBLE;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->Z:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "\u4f4e\u529f\u8017\u84dd\u7259\u521d\u59cb\u5316\u64cd\u4f5c"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->o0:Z

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->T:Landroid/content/Context;

    .line 7
    iget-object v3, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    iput-object v3, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->V:Lcom/dspread/xpos/QPOSService;

    .line 8
    iget-object v3, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->j0:Landroid/bluetooth/BluetoothManager;

    if-nez v3, :cond_1

    .line 9
    const-string v3, "bluetooth"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    iput-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->j0:Landroid/bluetooth/BluetoothManager;

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->j0:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->h0:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2

    return v2

    .line 17
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 18
    iput-boolean v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->o0:Z

    return v2

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->Q:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    .line 27
    :cond_4
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->p0:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    sget-object v3, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    if-ne v1, v3, :cond_5

    .line 28
    iput-boolean v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->o0:Z

    .line 29
    sput-boolean v0, Lcom/dspread/xpos/VPosBluetoothBLE;->z0:Z

    return v0

    :cond_5
    nop

    .line 32
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 36
    const-string/jumbo v1, "\u4f4e\u529f\u8017\u84dd\u7259\u5f00\u59cb\u521b\u5efa\u8fde\u63a5"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->Q:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/dspread/xpos/VPosBluetoothBLE;->d(Ljava/lang/String;)Z

    .line 38
    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTING:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    iput-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->p0:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    move v1, v2

    .line 42
    :goto_0
    iget-object v3, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->p0:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    sget-object v4, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->NONE:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    if-eq v3, v4, :cond_7

    .line 43
    sget-object v4, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    if-ne v3, v4, :cond_6

    const-wide/16 v3, 0x64

    .line 45
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 49
    :goto_1
    sput-boolean v0, Lcom/dspread/xpos/VPosBluetoothBLE;->z0:Z

    goto :goto_3

    .line 51
    :cond_6
    sget-object v4, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTFAIL:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    if-ne v3, v4, :cond_7

    .line 52
    const-string/jumbo v0, "open false"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 53
    sput-boolean v2, Lcom/dspread/xpos/VPosBluetoothBLE;->z0:Z

    goto :goto_3

    .line 58
    :cond_7
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 59
    sput-boolean v2, Lcom/dspread/xpos/VPosBluetoothBLE;->z0:Z

    goto :goto_3

    :cond_8
    const-wide/16 v3, 0x1

    .line 64
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

    if-lt v1, v4, :cond_b

    .line 69
    sput-boolean v2, Lcom/dspread/xpos/VPosBluetoothBLE;->z0:Z

    .line 74
    :goto_3
    sget-boolean v0, Lcom/dspread/xpos/VPosBluetoothBLE;->z0:Z

    if-nez v0, :cond_9

    .line 75
    invoke-direct {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->I()V

    .line 77
    :cond_9
    sget-boolean v0, Lcom/dspread/xpos/VPosBluetoothBLE;->z0:Z

    if-nez v0, :cond_a

    .line 78
    iput-boolean v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->o0:Z

    :cond_a
    return v0

    .line 64
    :cond_b
    move v1, v3

    goto :goto_0

    .line 78
    :cond_c
    :goto_4
    nop

    .line 79
    iput-boolean v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->o0:Z

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
    invoke-direct {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->S()[B

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    const-string v0, "Read:readNormalResponse"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->Q()[B

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

.method public F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->i0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method protected H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->h0:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->W:Ljava/lang/String;

    .line 6
    const-string v0, "BluetoothAdapter disconnect"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 9
    const-string v0, "BluetoothAdapter close"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    :goto_0
    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->i0:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->U:Z

    return v0
.end method

.method protected O()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->p0:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    sget-object v1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected P()V
    .locals 0

    return-void
.end method

.method protected T()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/VPosBluetoothBLE;->y0:Lcom/dspread/xpos/VPosBluetoothBLE;

    return-void
.end method

.method protected a(ZI)V
    .locals 3

    .line 6
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->r()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->T:Landroid/content/Context;

    .line 7
    iget-object v1, p0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    iput-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->V:Lcom/dspread/xpos/QPOSService;

    .line 8
    iget-object v1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->j0:Landroid/bluetooth/BluetoothManager;

    if-nez v1, :cond_0

    .line 9
    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->j0:Landroid/bluetooth/BluetoothManager;

    .line 12
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->h0:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->g0:Landroid/os/Handler;

    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->k0:Ljava/lang/Runnable;

    mul-int/lit16 p2, p2, 0x7d0

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->h0:Landroid/bluetooth/BluetoothAdapter;

    iget-object p2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->l0:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->g0:Landroid/os/Handler;

    iget-object p2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->k0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->h0:Landroid/bluetooth/BluetoothAdapter;

    iget-object p2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->l0:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 23
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->F()V

    :goto_0
    return-void
.end method

.method protected final a(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_1

    return v1

    .line 43
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.setCharacteristicNotification("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", true)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 45
    sget-object v2, Lcom/dspread/xpos/VPosBluetoothBLE;->R0:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 47
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling indications for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gatt.writeDescriptor("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", value=0x02-00)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->I()V

    return-void
.end method

.method protected final b(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    return v1

    .line 12
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatt.setCharacteristicNotification("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", true)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 14
    sget-object v2, Lcom/dspread/xpos/VPosBluetoothBLE;->R0:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 16
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling notifications for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gatt.writeDescriptor("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", value=0x01-00)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected c()V
    .locals 3

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->r0:I

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->q0:[B

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
    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->Q:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->f0:Z

    .line 14
    const-string p1, "[VPosBluetooth_2mode--]------address is null"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->d()V

    const/4 p1, 0x0

    .line 16
    sput-boolean p1, Lcom/dspread/xpos/VPosBluetoothBLE;->z0:Z

    .line 17
    invoke-direct {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->I()V

    .line 18
    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->Q:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 36
    const-string v0, "[VPosBluetooth_ble] close()"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 38
    sget-boolean v0, Lcom/dspread/xpos/VPosBluetoothBLE;->z0:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->S:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 40
    :try_start_0
    sput-boolean v1, Lcom/dspread/xpos/VPosBluetoothBLE;->z0:Z

    .line 41
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

.method public d(Ljava/lang/String;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->h0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->W:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_2

    .line 10
    const-string p1, "Trying to use an existing mBluetoothGatt for connection."

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    sget-object p1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTED:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->p0:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    return v2

    :cond_1
    return v1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->h0:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->Y:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_3

    .line 21
    const-string p1, "Device not found.  Unable to connect."

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v1

    .line 26
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    .line 27
    iget-object v3, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->T:Landroid/content/Context;

    iget-object v4, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->n0:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 29
    :cond_4
    iget-object v3, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->T:Landroid/content/Context;

    iget-object v4, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->n0:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v3, v1, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->X:Landroid/bluetooth/BluetoothGatt;

    .line 32
    :goto_0
    const-string v0, "Trying to create a new connection."

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->W:Ljava/lang/String;

    .line 34
    sget-object p1, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->ACTION_GATT_CONNECTING:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    iput-object p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->p0:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    return v2

    .line 35
    :cond_5
    :goto_1
    const-string p1, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return v1
.end method

.method protected e()V
    .locals 1

    .line 14
    sget-object v0, Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;->NONE:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    iput-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->p0:Lcom/dspread/xpos/VPosBluetoothBLE$BlutoothBLEStatus;

    .line 15
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->d()V

    .line 16
    invoke-direct {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->I()V

    .line 17
    invoke-virtual {p0}, Lcom/dspread/xpos/VPosBluetoothBLE;->G()V

    return-void
.end method

.method public f([B)V
    .locals 8

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

    .line 8
    array-length v1, p1

    if-eqz v1, :cond_4

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    iget v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->v0:I

    div-int v2, v1, v2

    move v3, v0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_2

    .line 15
    iget v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->v0:I

    new-array v4, v2, [B

    .line 16
    invoke-static {p1, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dspread/xpos/VPosBluetoothBLE;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 19
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->o(Z)V

    return-void

    .line 22
    :cond_1
    iget v2, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->v0:I

    sub-int/2addr v1, v2

    add-int/2addr v3, v2

    const-wide/16 v6, 0x19

    .line 26
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    move v2, v5

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 32
    new-array v2, v1, [B

    .line 33
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dspread/xpos/VPosBluetoothBLE;->e(Ljava/lang/String;)Z

    move-result v4

    .line 37
    :cond_3
    invoke-virtual {p0, v4}, Lcom/dspread/xpos/Vpos;->o(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->Q:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->P:Ljava/util/Set;

    return-object v0
.end method

.method protected j(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->w0:Z

    return-void
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/VPosBluetoothBLE;->U:Z

    return-void
.end method
