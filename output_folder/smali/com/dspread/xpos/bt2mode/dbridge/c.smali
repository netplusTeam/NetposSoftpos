.class final Lcom/dspread/xpos/bt2mode/dbridge/c;
.super Ljava/lang/Object;
.source "BluetoothDBridgeDeviceFactory.java"


# static fields
.field private static b:Lcom/dspread/xpos/bt2mode/dbridge/c;

.field private static c:[B


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge/c;->c:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/c;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/dspread/xpos/bt2mode/dbridge/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/dspread/xpos/bt2mode/dbridge/c;->c:[B

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/c;->b:Lcom/dspread/xpos/bt2mode/dbridge/c;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dspread/xpos/bt2mode/dbridge/c;

    invoke-direct {v1}, Lcom/dspread/xpos/bt2mode/dbridge/c;-><init>()V

    sput-object v1, Lcom/dspread/xpos/bt2mode/dbridge/c;->b:Lcom/dspread/xpos/bt2mode/dbridge/c;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dspread/xpos/bt2mode/dbridge/c;->b:Lcom/dspread/xpos/bt2mode/dbridge/c;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;)Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;
    .locals 3

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1, p1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 16
    :cond_1
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    invoke-direct {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 17
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/c;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;
    .locals 1

    .line 18
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dspread/xpos/bt2mode/dbridge/c;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
