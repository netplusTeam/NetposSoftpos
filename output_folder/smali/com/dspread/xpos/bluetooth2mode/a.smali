.class public Lcom/dspread/xpos/bluetooth2mode/a;
.super Ljava/lang/Object;
.source "BluetoothConnModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bluetooth2mode/a$c;,
        Lcom/dspread/xpos/bluetooth2mode/a$e;,
        Lcom/dspread/xpos/bluetooth2mode/a$f;,
        Lcom/dspread/xpos/bluetooth2mode/a$b;,
        Lcom/dspread/xpos/bluetooth2mode/a$d;
    }
.end annotation


# static fields
.field private static final s:Z = true

.field private static final t:Ljava/lang/String; = "BluetoothConnModel"

.field private static final u:Ljava/lang/String; = "BluetoothConn"

.field private static final v:Ljava/util/UUID;

.field private static final w:Ljava/util/UUID;

.field public static final x:Ljava/lang/String; = "output.txt"

.field private static y:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;


# instance fields
.field private a:Z

.field private final b:Landroid/bluetooth/BluetoothAdapter;

.field private final c:Landroid/content/Context;

.field private d:Lcom/dspread/xpos/bluetooth2mode/a$e;

.field private e:Lcom/dspread/xpos/bluetooth2mode/a$f;

.field private f:Lcom/dspread/xpos/bluetooth2mode/a$b;

.field private g:Lcom/dspread/xpos/bluetooth2mode/a$d;

.field private h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

.field private i:Ljava/io/FileOutputStream;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field protected n:Landroid/bluetooth/BluetoothSocket;

.field private o:I

.field private p:Z

.field private q:Lcom/dspread/xpos/bluetooth2mode/a$c;

.field private r:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/a;->v:Ljava/util/UUID;

    .line 3
    const-string v0, "fa87c0d0-afac-11de-8a39-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/a;->w:Ljava/util/UUID;

    .line 23
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->NOCONNECT:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/a;->y:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dspread/xpos/bluetooth2mode/a$c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/c;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->a:Z

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    .line 13
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->j:Z

    .line 14
    iput v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->k:I

    .line 15
    iput v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->l:I

    .line 16
    iput v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->m:I

    .line 18
    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->n:Landroid/bluetooth/BluetoothSocket;

    .line 19
    const/16 v2, 0x14

    iput v2, p0, Lcom/dspread/xpos/bluetooth2mode/a;->o:I

    .line 20
    iput-boolean v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->p:Z

    .line 667
    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->q:Lcom/dspread/xpos/bluetooth2mode/a$c;

    .line 752
    sget-object v0, Lcom/dspread/xpos/QPOSService$BTCONNTYPE;->AUTO:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->r:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    .line 753
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 755
    iput-object p2, p0, Lcom/dspread/xpos/bluetooth2mode/a;->q:Lcom/dspread/xpos/bluetooth2mode/a$c;

    .line 756
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->c:Landroid/content/Context;

    .line 757
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->b()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/bluetooth2mode/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->l:I

    return p1
.end method

.method static synthetic a(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;
    .locals 0

    .line 6
    sput-object p0, Lcom/dspread/xpos/bluetooth2mode/a;->y:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    return-object p0
.end method

.method static synthetic a(Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    return-object p0
.end method

.method static synthetic a(Lcom/dspread/xpos/bluetooth2mode/a;Lcom/dspread/xpos/bluetooth2mode/a$e;)Lcom/dspread/xpos/bluetooth2mode/a$e;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->d:Lcom/dspread/xpos/bluetooth2mode/a$e;

    return-object p1
.end method

.method static synthetic a()Ljava/util/UUID;
    .locals 1

    .line 3
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/a;->v:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic a(Lcom/dspread/xpos/bluetooth2mode/a;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/dspread/xpos/bluetooth2mode/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 50
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/dspread/xpos/bluetooth2mode/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->k:I

    return p1
.end method

.method static synthetic b(Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/bluetooth2mode/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->q:Lcom/dspread/xpos/bluetooth2mode/a$c;

    return-object p0
.end method

.method public static b(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/dspread/xpos/bluetooth2mode/a;->y:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    return-void
.end method

.method static synthetic c(Lcom/dspread/xpos/bluetooth2mode/a;I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->k:I

    return v0
.end method

.method static synthetic c(Lcom/dspread/xpos/bluetooth2mode/a;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->b:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothConnModeltest123 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/dspread/xpos/bluetooth2mode/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->a:Z

    return p0
.end method

.method static synthetic e(Lcom/dspread/xpos/bluetooth2mode/a;)Lcom/dspread/xpos/QPOSService$BTCONNTYPE;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->r:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    return-object p0
.end method

.method public static e()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;
    .locals 1

    .line 2
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/a;->y:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->o:I

    return-void
.end method

.method public declared-synchronized a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    const-string v0, "BluetoothConnModel[connectTo] ClientSocketThread start..."

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->CONNECTING:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/a;->y:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    .line 9
    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/a$f;

    invoke-direct {v0, p0, p1}, Lcom/dspread/xpos/bluetooth2mode/a$f;-><init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->e:Lcom/dspread/xpos/bluetooth2mode/a$f;

    .line 10
    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/a$f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    monitor-enter p0

    .line 11
    :try_start_0
    const-string v0, "BluetoothConnModel[connected]"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has connected."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dspread/xpos/bluetooth2mode/a;->c(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/dspread/xpos/bluetooth2mode/a$b;-><init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bluetooth2mode/a$a;)V

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->f:Lcom/dspread/xpos/bluetooth2mode/a$b;

    .line 19
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bluetooth2mode/a$b;I)Z

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothConnModel[connected] connectedThread hashcode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->f:Lcom/dspread/xpos/bluetooth2mode/a$b;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->f:Lcom/dspread/xpos/bluetooth2mode/a$b;

    invoke-virtual {p1}, Lcom/dspread/xpos/bluetooth2mode/a$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 10
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V
    .locals 2

    .line 35
    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/dspread/xpos/bluetooth2mode/a$d;-><init>(Lcom/dspread/xpos/bluetooth2mode/a;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;Lcom/dspread/xpos/bluetooth2mode/a$a;)V

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->g:Lcom/dspread/xpos/bluetooth2mode/a$d;

    .line 36
    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/a$b;->a()V

    return-void
.end method

.method public a(Lcom/dspread/xpos/QPOSService$BTCONNTYPE;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->r:Lcom/dspread/xpos/QPOSService$BTCONNTYPE;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 37
    const-string v0, "BluetoothConnModel"

    const-string v1, "SendFileAllSockets start..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothSocket;

    .line 39
    monitor-enter p0

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/dspread/xpos/bluetooth2mode/a;->a(Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V

    .line 42
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    .line 44
    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)Z

    .line 47
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->p:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 15
    const-string v0, "BluetoothConnModel[disconnectServerSocket] ----------------"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->d:Lcom/dspread/xpos/bluetooth2mode/a$e;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/a$e;->a()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->d:Lcom/dspread/xpos/bluetooth2mode/a$e;

    .line 24
    const-string v0, "BluetoothConnModel[disconnectServerSocket] NULL mServerSocketThread"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    monitor-enter p0

    .line 34
    :try_start_0
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/a;->y:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothConnModel[disconnectSocket] ------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ; device name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    invoke-virtual {v1, p1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->b(Landroid/bluetooth/BluetoothSocket;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothConnModel[disconnectSocket] mSocketConfig doesn\'t contain the socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ; device name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 50
    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/a;->y:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    .line 51
    iget-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->b(Landroid/bluetooth/BluetoothSocket;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothConnModel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connection was disconnected!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    invoke-virtual {v1, p1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->c(Landroid/bluetooth/BluetoothSocket;)V

    .line 65
    sput-object v0, Lcom/dspread/xpos/bluetooth2mode/a;->y:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 27
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothConnModel[disconnectSocketFromAddress] socketSets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    .line 31
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0

    .line 33
    :cond_0
    sget-object p1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;->DISCONNECTED:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    sput-object p1, Lcom/dspread/xpos/bluetooth2mode/a;->y:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;

    return-void
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->d:Lcom/dspread/xpos/bluetooth2mode/a$e;

    if-nez v0, :cond_0

    .line 5
    const-string v0, "BluetoothConnModel[startSession] mServerSocketThread is dead"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/dspread/xpos/bluetooth2mode/a$e;

    invoke-direct {v0, p0, p1}, Lcom/dspread/xpos/bluetooth2mode/a$e;-><init>(Lcom/dspread/xpos/bluetooth2mode/a;Z)V

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->d:Lcom/dspread/xpos/bluetooth2mode/a$e;

    .line 7
    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/a$e;->b()V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothConnModel[startSession] mServerSocketThread is alive : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    .line 3
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)Z
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    .line 12
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a(Landroid/bluetooth/BluetoothSocket;)Lcom/dspread/xpos/bluetooth2mode/a$b;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    invoke-virtual {v1, p1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->b(Landroid/bluetooth/BluetoothSocket;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {v0, p2}, Lcom/dspread/xpos/bluetooth2mode/a$b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->n:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->b(Landroid/bluetooth/BluetoothSocket;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    .line 4
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)Z

    move-result p1

    .line 9
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->j:Z

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->l:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->k:I

    return v0
.end method

.method public declared-synchronized i()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->b()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->b:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 5

    .line 1
    const-string v0, "BluetoothConnModel[terminated] --------------"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/bluetooth2mode/a;->b()V

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    invoke-virtual {v0}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "BluetoothConnModel"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothSocket;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[terminated] Left Socket(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    .line 6
    invoke-virtual {v4}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/bluetooth2mode/a;->b(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[terminated] Final Left Socket(s): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/a;->h:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    .line 17
    invoke-virtual {v1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
