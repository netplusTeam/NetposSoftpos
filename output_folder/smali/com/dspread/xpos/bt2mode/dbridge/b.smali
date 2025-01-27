.class final Lcom/dspread/xpos/bt2mode/dbridge/b;
.super Ljava/lang/Object;
.source "BluetoothDBridgeConnManager.java"

# interfaces
.implements Lcom/dspread/xpos/bt2mode/dbridge/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bt2mode/dbridge/b$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "BluetoothDBridgeConnManager"


# instance fields
.field private final a:Landroid/bluetooth/BluetoothAdapter;

.field private final b:Lcom/dspread/xpos/bt2mode/dbridge/a$d;

.field private c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;

.field private d:Lcom/dspread/xpos/bt2mode/dbridge/d;

.field private e:Lcom/dspread/xpos/bt2mode/dbridge/f;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge/a$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->f:Z

    .line 3
    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->g:Z

    .line 6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 7
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->b:Lcom/dspread/xpos/bt2mode/dbridge/a$d;

    .line 8
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/f;

    invoke-direct {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge/f;-><init>(Lcom/dspread/xpos/bt2mode/dbridge/a$d;)V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->e:Lcom/dspread/xpos/bt2mode/dbridge/f;

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge/b;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->a:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge/b;Lcom/dspread/xpos/bt2mode/dbridge/b$a;)Lcom/dspread/xpos/bt2mode/dbridge/b$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    return-object p1
.end method

.method private a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Z)V

    .line 29
    sget-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTFAILED:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->b:Lcom/dspread/xpos/bt2mode/dbridge/a$d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 33
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string v1, "exception"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 39
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->b:Lcom/dspread/xpos/bt2mode/dbridge/a$d;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    monitor-enter p0

    const/4 p1, 0x0

    .line 42
    :try_start_0
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge/b;Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge/b;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/dspread/xpos/bt2mode/dbridge/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/dspread/xpos/bt2mode/dbridge/b;)Lcom/dspread/xpos/bt2mode/dbridge/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->e:Lcom/dspread/xpos/bt2mode/dbridge/f;

    return-object p0
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/bluetooth/BluetoothSocket;)V
    .locals 2

    .line 46
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge/c;->a()Lcom/dspread/xpos/bt2mode/dbridge/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge/c;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;->DIRECTION_BACKWARD:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$Direction;)V

    .line 50
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->l()V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->e:Lcom/dspread/xpos/bt2mode/dbridge/f;

    invoke-virtual {v1, p1, v0}, Lcom/dspread/xpos/bt2mode/dbridge/f;->a(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;)V

    return-void
.end method

.method declared-synchronized a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;)V
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->e:Lcom/dspread/xpos/bt2mode/dbridge/f;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge/f;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;I)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDBridgeConnManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->a()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->l()V

    .line 12
    iget-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->g:Z

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->d()Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDNONE:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    sget-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;->STATE_BONDING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$BondStatus;)V

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    sget-object v0, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;->STATUS_CONNECTTING:Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice$ConnectStatus;)V

    .line 22
    :cond_2
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge/b$a;-><init>(Lcom/dspread/xpos/bt2mode/dbridge/b;Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;I)V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;[BI)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->e:Lcom/dspread/xpos/bt2mode/dbridge/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge/f;->a(Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;[BI)V

    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->e:Lcom/dspread/xpos/bt2mode/dbridge/f;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge/f;->a(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->g:Z

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "BluetoothDBridgeConnManager"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->d:Lcom/dspread/xpos/bt2mode/dbridge/d;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge/d;

    iget-boolean v1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->f:Z

    invoke-direct {v0, p0, v1}, Lcom/dspread/xpos/bt2mode/dbridge/d;-><init>(Lcom/dspread/xpos/bt2mode/dbridge/d$b;Z)V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->d:Lcom/dspread/xpos/bt2mode/dbridge/d;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->d:Lcom/dspread/xpos/bt2mode/dbridge/d;

    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/d;->a()V

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->a()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->e:Lcom/dspread/xpos/bt2mode/dbridge/f;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge/f;->b(Lcom/dspread/xpos/bt2mode/dbridge/a$b;)V

    return-void
.end method

.method b(Z)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->d:Lcom/dspread/xpos/bt2mode/dbridge/d;

    if-eqz v0, :cond_0

    .line 14
    iput-boolean p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->f:Z

    .line 15
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "BluetoothDBridgeConnManager"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->d:Lcom/dspread/xpos/bt2mode/dbridge/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/d;->b()V

    .line 6
    iput-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->d:Lcom/dspread/xpos/bt2mode/dbridge/d;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/b$a;->a()V

    .line 11
    iput-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->c:Lcom/dspread/xpos/bt2mode/dbridge/b$a;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/b;->e:Lcom/dspread/xpos/bt2mode/dbridge/f;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
