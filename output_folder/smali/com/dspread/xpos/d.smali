.class public Lcom/dspread/xpos/d;
.super Ljava/lang/Object;
.source "BlueToothConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/d$c;,
        Lcom/dspread/xpos/d$d;
    }
.end annotation


# static fields
.field private static final n:Z = true

.field private static final o:Ljava/lang/String; = "BluetoothPOS"

.field private static final p:Ljava/util/UUID;

.field private static q:Landroid/bluetooth/BluetoothAdapter; = null

.field public static final r:I = 0x0

.field public static final s:I = 0x2

.field public static final t:I = 0x3

.field public static final u:I = 0x4

.field private static v:Lcom/dspread/xpos/d;

.field private static w:Lcom/dspread/xpos/QPOSService;

.field private static x:Lcom/dspread/xpos/DspFingerPrint;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dspread/xpos/d$c;

.field private c:Lcom/dspread/xpos/d$d;

.field private d:I

.field private e:Ljava/io/ByteArrayOutputStream;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:[B

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/d;->p:Ljava/util/UUID;

    .line 4
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    .line 21
    sput-object v0, Lcom/dspread/xpos/d;->v:Lcom/dspread/xpos/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/d;->g:I

    .line 3
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/d;->h:[B

    .line 6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dspread/xpos/d;->j:Landroid/content/BroadcastReceiver;

    .line 9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/d;->k:Z

    .line 68
    iput-boolean v0, p0, Lcom/dspread/xpos/d;->l:Z

    .line 69
    iput-boolean v0, p0, Lcom/dspread/xpos/d;->m:Z

    .line 70
    iput v0, p0, Lcom/dspread/xpos/d;->d:I

    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/d;->e:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/d;Lcom/dspread/xpos/d$c;)Lcom/dspread/xpos/d$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/d;->b:Lcom/dspread/xpos/d$c;

    return-object p1
.end method

.method protected static a(Lcom/dspread/xpos/DspFingerPrint;)Lcom/dspread/xpos/d;
    .locals 1

    .line 14
    sget-object v0, Lcom/dspread/xpos/d;->v:Lcom/dspread/xpos/d;

    if-nez v0, :cond_1

    .line 15
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    .line 16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_0
    sput-object p0, Lcom/dspread/xpos/d;->x:Lcom/dspread/xpos/DspFingerPrint;

    .line 20
    new-instance p0, Lcom/dspread/xpos/d;

    invoke-direct {p0}, Lcom/dspread/xpos/d;-><init>()V

    sput-object p0, Lcom/dspread/xpos/d;->v:Lcom/dspread/xpos/d;

    .line 23
    :cond_1
    sget-object p0, Lcom/dspread/xpos/d;->v:Lcom/dspread/xpos/d;

    return-object p0
.end method

.method protected static a(Lcom/dspread/xpos/QPOSService;)Lcom/dspread/xpos/d;
    .locals 1

    .line 4
    sget-object v0, Lcom/dspread/xpos/d;->v:Lcom/dspread/xpos/d;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    .line 6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    sput-object p0, Lcom/dspread/xpos/d;->w:Lcom/dspread/xpos/QPOSService;

    .line 10
    new-instance p0, Lcom/dspread/xpos/d;

    invoke-direct {p0}, Lcom/dspread/xpos/d;-><init>()V

    sput-object p0, Lcom/dspread/xpos/d;->v:Lcom/dspread/xpos/d;

    .line 13
    :cond_1
    sget-object p0, Lcom/dspread/xpos/d;->v:Lcom/dspread/xpos/d;

    return-object p0
.end method

.method static synthetic a(Lcom/dspread/xpos/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/d;->l:Z

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/d;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/dspread/xpos/d;->m:Z

    return p1
.end method

.method static synthetic b()Lcom/dspread/xpos/QPOSService;
    .locals 1

    .line 2
    sget-object v0, Lcom/dspread/xpos/d;->w:Lcom/dspread/xpos/QPOSService;

    return-object v0
.end method

.method static synthetic b(Lcom/dspread/xpos/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/d;->l()V

    return-void
.end method

.method static synthetic b(Lcom/dspread/xpos/d;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/dspread/xpos/d;->k:Z

    return p1
.end method

.method static synthetic c()Lcom/dspread/xpos/DspFingerPrint;
    .locals 1

    .line 2
    sget-object v0, Lcom/dspread/xpos/d;->x:Lcom/dspread/xpos/DspFingerPrint;

    return-object v0
.end method

.method static synthetic c(Lcom/dspread/xpos/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/d;->h()V

    return-void
.end method

.method static synthetic d(Lcom/dspread/xpos/d;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/d;->e:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static synthetic d()Ljava/util/UUID;
    .locals 1

    .line 2
    sget-object v0, Lcom/dspread/xpos/d;->p:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic e()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 2
    sget-object v0, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/dspread/xpos/d;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/d;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/dspread/xpos/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/d;->k:Z

    return p0
.end method

.method private g()V
    .locals 1

    .line 2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/d;->a(I)V

    .line 3
    const-string v0, "Connection Failed"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/dspread/xpos/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/d;->g()V

    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/d;->a(I)V

    .line 2
    const-string v0, "Connection Lost"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/d;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/dspread/xpos/d;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/dspread/xpos/d;->j:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/dspread/xpos/d;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 148
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dspread/xpos/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 149
    iput p1, p0, Lcom/dspread/xpos/d;->d:I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    monitor-enter p0

    .line 156
    :try_start_0
    iget v0, p0, Lcom/dspread/xpos/d;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    monitor-exit p0

    return-void

    .line 159
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lcom/dspread/xpos/d;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 163
    iget-object v0, p0, Lcom/dspread/xpos/d;->b:Lcom/dspread/xpos/d$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dspread/xpos/d$c;->a()V

    iput-object v1, p0, Lcom/dspread/xpos/d;->b:Lcom/dspread/xpos/d$c;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/d;->c:Lcom/dspread/xpos/d$d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dspread/xpos/d$d;->a()V

    iput-object v1, p0, Lcom/dspread/xpos/d;->c:Lcom/dspread/xpos/d$d;

    .line 170
    :cond_2
    new-instance v0, Lcom/dspread/xpos/d$c;

    invoke-direct {v0, p0, p1}, Lcom/dspread/xpos/d$c;-><init>(Lcom/dspread/xpos/d;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/dspread/xpos/d;->b:Lcom/dspread/xpos/d$c;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 172
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/d;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    monitor-enter p0

    .line 174
    :try_start_0
    const-string v0, "connected"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    const-string v1, "com.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "connStatus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/dspread/xpos/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    iget-object v0, p0, Lcom/dspread/xpos/d;->b:Lcom/dspread/xpos/d$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dspread/xpos/d$c;->a()V

    iput-object v1, p0, Lcom/dspread/xpos/d;->b:Lcom/dspread/xpos/d$c;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/d;->c:Lcom/dspread/xpos/d$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dspread/xpos/d$d;->a()V

    iput-object v1, p0, Lcom/dspread/xpos/d;->c:Lcom/dspread/xpos/d$d;

    .line 189
    :cond_1
    new-instance v0, Lcom/dspread/xpos/d$d;

    invoke-direct {v0, p0, p1}, Lcom/dspread/xpos/d$d;-><init>(Lcom/dspread/xpos/d;Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Lcom/dspread/xpos/d;->c:Lcom/dspread/xpos/d$d;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connected to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 194
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/dspread/xpos/d;->a:Landroid/content/Context;

    return-void
.end method

.method protected a(Landroid/content/Context;J)V
    .locals 3

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/d;->k:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/d;->l:Z

    .line 28
    iput-boolean v0, p0, Lcom/dspread/xpos/d;->m:Z

    .line 30
    iput-object p1, p0, Lcom/dspread/xpos/d;->f:Landroid/content/Context;

    .line 31
    iget-object p1, p0, Lcom/dspread/xpos/d;->i:Ljava/util/List;

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dspread/xpos/d;->i:Ljava/util/List;

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/d;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x64

    .line 36
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    :goto_0
    sget-object p1, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_1

    .line 42
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    sput-object p1, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    .line 44
    :cond_1
    sget-object p1, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 45
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    iget-object p2, p0, Lcom/dspread/xpos/d;->f:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/d;->j:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    .line 51
    iget-object v0, p0, Lcom/dspread/xpos/d;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    :cond_3
    new-instance p1, Lcom/dspread/xpos/d$a;

    invoke-direct {p1, p0}, Lcom/dspread/xpos/d$a;-><init>(Lcom/dspread/xpos/d;)V

    iput-object p1, p0, Lcom/dspread/xpos/d;->j:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/dspread/xpos/d;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/dspread/xpos/d;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 126
    new-instance v0, Lcom/dspread/xpos/d$b;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/d$b;-><init>(Lcom/dspread/xpos/d;)V

    const-wide/16 v1, 0x3e8

    mul-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    sget-object p1, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 151
    :try_start_0
    iget v0, p0, Lcom/dspread/xpos/d;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    sget-object v0, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/d;->a(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a([B)V
    .locals 2

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget v0, p0, Lcom/dspread/xpos/d;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 197
    const-string p1, "Write to NOT connected BT, ignored"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 198
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/d;->c:Lcom/dspread/xpos/d$d;

    const/4 v1, 0x0

    .line 201
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/d;->h:[B

    .line 202
    iget-object v1, p0, Lcom/dspread/xpos/d;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/d$d;->a([B)V

    return-void

    :catchall_0
    move-exception p1

    .line 207
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5

    .line 4
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/dspread/xpos/d;->q:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDevice.getBondState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    return v3

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 11
    const-string v2, "createBond"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 12
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    return v0
.end method

.method protected f()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/d;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/List;
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
    iget-object v0, p0, Lcom/dspread/xpos/d;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/d;->m:Z

    return v0
.end method

.method public declared-synchronized k()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/dspread/xpos/d;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 4
    iget-object v2, p0, Lcom/dspread/xpos/d;->h:[B

    array-length v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    return-object v1

    :cond_0
    const/4 v3, 0x2

    .line 8
    :try_start_0
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v4

    .line 9
    new-array v1, v3, [B

    .line 10
    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cur_pkt.length : received_chars.length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/dspread/xpos/d;->h:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/dspread/xpos/d;->h:[B

    array-length v4, v2

    if-eq v3, v4, :cond_1

    .line 13
    array-length v4, v2

    sub-int/2addr v4, v3

    new-array v5, v4, [B

    .line 14
    invoke-static {v2, v3, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v5, p0, Lcom/dspread/xpos/d;->h:[B

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT second half packet len is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    nop

    .line 18
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/dspread/xpos/d;->h:[B

    .line 19
    const-string v2, "BT second half packet len 0"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/dspread/xpos/d;->h:[B

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 25
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/d;->h:[B

    .line 26
    const-string v0, "Something wrong in BT buffer"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method protected n()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/d;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/d;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method protected q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/d;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public declared-synchronized r()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-string/jumbo v0, "start"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/d;->b:Lcom/dspread/xpos/d$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dspread/xpos/d$c;->a()V

    iput-object v1, p0, Lcom/dspread/xpos/d;->b:Lcom/dspread/xpos/d$c;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/d;->c:Lcom/dspread/xpos/d$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dspread/xpos/d$d;->a()V

    iput-object v1, p0, Lcom/dspread/xpos/d;->c:Lcom/dspread/xpos/d$d;

    :cond_1
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-string/jumbo v0, "stop"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/d;->b:Lcom/dspread/xpos/d$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dspread/xpos/d$c;->a()V

    iput-object v1, p0, Lcom/dspread/xpos/d;->b:Lcom/dspread/xpos/d$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/d;->c:Lcom/dspread/xpos/d$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dspread/xpos/d$d;->a()V

    iput-object v1, p0, Lcom/dspread/xpos/d;->c:Lcom/dspread/xpos/d$d;

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected t()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/d;->l:Z

    .line 2
    iput-boolean v0, p0, Lcom/dspread/xpos/d;->m:Z

    .line 3
    invoke-direct {p0}, Lcom/dspread/xpos/d;->u()V

    .line 4
    invoke-direct {p0}, Lcom/dspread/xpos/d;->l()V

    return-void
.end method

.method protected declared-synchronized v()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/d;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dspread/xpos/d;->f:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
