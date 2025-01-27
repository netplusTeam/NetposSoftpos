.class public Lcom/dspread/xpos/bt2mode/dbridge4/a;
.super Ljava/lang/Object;
.source "BluetoothIBridgeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bt2mode/dbridge4/a$f;,
        Lcom/dspread/xpos/bt2mode/dbridge4/a$d;,
        Lcom/dspread/xpos/bt2mode/dbridge4/a$e;
    }
.end annotation


# static fields
.field static final k:Z = true

.field static final l:I = 0x1

.field static final m:I = 0x2

.field static final n:I = 0x4

.field static final o:I = 0x8

.field static final p:I = 0x10

.field static final q:I = 0x20


# instance fields
.field private a:Landroid/bluetooth/BluetoothAdapter;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

.field private e:Z

.field private f:Z

.field private g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/bt2mode/dbridge4/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/BroadcastReceiver;

.field private j:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e:Z

    .line 3
    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->f:Z

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    .line 7
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a$a;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/a;)V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->i:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v1, Lcom/dspread/xpos/bt2mode/dbridge4/a$b;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a$b;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/a;)V

    iput-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->j:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 144
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->c:Landroid/content/Context;

    .line 145
    new-instance p1, Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    invoke-direct {p1, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a$f;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/a;)V

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    .line 146
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 147
    new-instance p1, Lcom/dspread/xpos/bt2mode/dbridge4/b;

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    invoke-direct {p1, v1, v2}, Lcom/dspread/xpos/bt2mode/dbridge4/b;-><init>(Landroid/content/Context;Lcom/dspread/xpos/bt2mode/dbridge4/a$f;)V

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    .line 149
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a()V

    .line 153
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->c:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(ILcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V
    .locals 7

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventReceived("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_9

    .line 66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dspread/xpos/bt2mode/dbridge4/a$e;

    const/4 v5, 0x1

    if-eq p1, v5, :cond_7

    const/4 v6, 0x2

    if-eq p1, v6, :cond_6

    const/4 v6, 0x4

    if-eq p1, v6, :cond_5

    const/16 v6, 0x8

    if-eq p1, v6, :cond_2

    const/16 v5, 0x10

    if-eq p1, v5, :cond_1

    const/16 v5, 0x20

    if-eq p1, v5, :cond_0

    goto :goto_2

    .line 90
    :cond_0
    invoke-interface {v4, p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge4/a$e;->c(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V

    goto :goto_2

    .line 91
    :cond_1
    invoke-interface {v4}, Lcom/dspread/xpos/bt2mode/dbridge4/a$e;->a()V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v5, v2

    .line 92
    :goto_1
    iget-boolean v6, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->b:Z

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 93
    invoke-virtual {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->g()Z

    move-result v5

    :cond_4
    if-eqz v5, :cond_8

    .line 97
    invoke-interface {v4, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/a$e;->b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V

    goto :goto_2

    .line 98
    :cond_5
    invoke-interface {v4, p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge4/a$e;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_6
    invoke-interface {v4, p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge4/a$e;->b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V

    goto :goto_2

    .line 100
    :cond_7
    invoke-interface {v4, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/a$e;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge4/a;ILcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(ILcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++++++++++["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    const-string v0, "BluetoothIBridgeAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge4/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge4/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/dspread/xpos/bt2mode/dbridge4/a;)Lcom/dspread/xpos/bt2mode/dbridge4/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    return-object p0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 38
    const-string p0, "MESSAGE"

    return-object p0

    .line 39
    :cond_0
    const-string p0, "MESSAGE_DEVICE_CONNECT_FAILED"

    return-object p0

    .line 40
    :cond_1
    const-string p0, "MESSAGE_DEVICE_DISCONNECTED"

    return-object p0

    .line 41
    :cond_2
    const-string p0, "MESSAGE_DEVICE_CONNECTED"

    return-object p0
.end method

.method static synthetic c(Lcom/dspread/xpos/bt2mode/dbridge4/a;)Lcom/dspread/xpos/bt2mode/dbridge4/a$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    return-object p0
.end method

.method static e()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->b()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    .line 36
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BIZ)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge4/a$e;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->h:Ljava/util/ArrayList;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/16 v1, 0x78

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const-string v3, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    if-eqz p1, :cond_1

    .line 41
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)Z
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return v1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+++++++++++++++["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] Unknown device!!!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    const-string v0, "BluetoothIBridgeAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Z)V

    :cond_2
    return v1
.end method

.method public b()Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 32
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BIZ)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->b(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/dspread/xpos/bt2mode/dbridge4/a$e;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)Z
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return v1

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+++++++++++++++["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] Unknown device!!!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    const-string v0, "BluetoothIBridgeAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    invoke-virtual {v0, p1, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Z)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Z)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public d(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->g:Lcom/dspread/xpos/bt2mode/dbridge4/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Z)V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->b:Z

    .line 3
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e:Z

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e:Z

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->f:Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->f:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->j:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    new-instance v1, Lcom/dspread/xpos/bt2mode/dbridge4/a$c;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a$c;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/a;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/a;->j:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    const/16 v0, 0x10

    .line 3
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(ILcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
