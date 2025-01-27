.class public Lcom/dspread/xpos/bluetoothUtil/a;
.super Ljava/lang/Thread;
.source "BluetoothClientConnThread.java"


# static fields
.field public static e:Landroid/bluetooth/BluetoothSocket;

.field private static final f:Ljava/util/UUID;


# instance fields
.field private a:Landroid/bluetooth/BluetoothDevice;

.field private b:Lcom/dspread/xpos/bluetoothUtil/b;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bluetoothUtil/a;->f:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/c;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dspread/xpos/bluetoothUtil/a;->c:Z

    .line 13
    iput-object p1, p0, Lcom/dspread/xpos/bluetoothUtil/a;->a:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/c;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dspread/xpos/bluetoothUtil/a;->c:Z

    .line 31
    iput-object p1, p0, Lcom/dspread/xpos/bluetoothUtil/a;->a:Landroid/bluetooth/BluetoothDevice;

    .line 32
    iput-boolean p2, p0, Lcom/dspread/xpos/bluetoothUtil/a;->d:Z

    return-void
.end method

.method private a()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/a;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createRfcommSocket"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/dspread/xpos/bluetoothUtil/a;->a:Landroid/bluetooth/BluetoothDevice;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    .line 16
    :goto_0
    const/4 v0, 0x0

    :goto_1
    sput-object v0, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/a;->a:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/dspread/xpos/bluetoothUtil/a;->f:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    goto :goto_0

    .line 11
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    .line 12
    iget-boolean v0, p0, Lcom/dspread/xpos/bluetoothUtil/a;->c:Z

    if-eqz v0, :cond_2

    .line 13
    const-string v0, "+++++++++++++++++++android  ---"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/a;->a:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/dspread/xpos/bluetoothUtil/a;->f:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    goto :goto_0

    .line 17
    :cond_2
    const-string v0, "+++++++++++++++++++other device  ---"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/a;->a:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/dspread/xpos/bluetoothUtil/a;->f:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    goto :goto_0

    .line 29
    :cond_3
    const-string v0, "+++++++++++++++++++old android version---"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/a;->a:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/dspread/xpos/bluetoothUtil/a;->f:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    .line 34
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 37
    :cond_4
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    invoke-static {}, Lcom/dspread/xpos/p0;->I()Lcom/dspread/xpos/p0;

    move-result-object v0

    iget-object v0, v0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/dspread/xpos/p0;->I()Lcom/dspread/xpos/p0;

    move-result-object v0

    iget-object v0, v0, Lcom/dspread/xpos/p0;->Q:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 59
    :cond_5
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {v0}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    goto :goto_2

    .line 60
    :cond_6
    :goto_1
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {v0}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    :goto_2
    return-void

    .line 61
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POS_SDK"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_1
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_7

    .line 64
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 67
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    nop

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/bluetoothUtil/a;->e:Landroid/bluetooth/BluetoothSocket;

    .line 71
    iput-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/a;->a:Landroid/bluetooth/BluetoothDevice;

    .line 73
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    invoke-static {v0}, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools;->a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V

    return-void
.end method
