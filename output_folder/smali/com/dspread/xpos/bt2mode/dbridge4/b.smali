.class final Lcom/dspread/xpos/bt2mode/dbridge4/b;
.super Ljava/lang/Object;
.source "BluetoothIBridgeConnManager.java"

# interfaces
.implements Lcom/dspread/xpos/bt2mode/dbridge4/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bt2mode/dbridge4/b$a;
    }
.end annotation


# static fields
.field private static final i:Z = true

.field private static final j:Ljava/lang/String; = "BluetoothIBridgeConnManager"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/bluetooth/BluetoothAdapter;

.field private final c:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

.field private d:Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

.field private e:Lcom/dspread/xpos/bt2mode/dbridge4/e;

.field private f:Lcom/dspread/xpos/bt2mode/dbridge4/g;

.field private g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dspread/xpos/bt2mode/dbridge4/a$f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->h:Z

    .line 6
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a:Landroid/content/Context;

    .line 7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 8
    iput-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->c:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    .line 9
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/g;

    invoke-direct {v0, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/g;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/a$f;)V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->f:Lcom/dspread/xpos/bt2mode/dbridge4/g;

    .line 11
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/d;

    invoke-direct {v0, p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d;-><init>(Landroid/content/Context;Lcom/dspread/xpos/bt2mode/dbridge4/a$f;)V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge4/b;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->b:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge4/b;Lcom/dspread/xpos/bt2mode/dbridge4/b$a;)Lcom/dspread/xpos/bt2mode/dbridge4/b$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

    return-object p1
.end method

.method private a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b(Z)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->c:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 41
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v1, "exception"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 47
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->c:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    monitor-enter p0

    const/4 p1, 0x0

    .line 50
    :try_start_0
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge4/b;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/dspread/xpos/bt2mode/dbridge4/b;)Lcom/dspread/xpos/bt2mode/dbridge4/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->f:Lcom/dspread/xpos/bt2mode/dbridge4/g;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    const-string v0, "BluetoothIBridgeConnManager"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->e:Lcom/dspread/xpos/bt2mode/dbridge4/e;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/e;

    iget-boolean v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->h:Z

    invoke-direct {v0, p0, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/e;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/e$b;Z)V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->e:Lcom/dspread/xpos/bt2mode/dbridge4/e;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->e:Lcom/dspread/xpos/bt2mode/dbridge4/e;

    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/e;->a()V

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->a()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .line 3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/bluetooth/BluetoothSocket;)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/c;->a()Lcom/dspread/xpos/bt2mode/dbridge4/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/c;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->DIRECTION_BACKWARD:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->f:Lcom/dspread/xpos/bt2mode/dbridge4/g;

    invoke-virtual {v1, p1, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/g;->a(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V

    return-void
.end method

.method declared-synchronized a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Z)V
    .locals 2

    monitor-enter p0

    .line 14
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

    const-string v1, "BluetoothIBridgeConnManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->a()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

    :cond_0
    if-eqz p2, :cond_1

    .line 22
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

    invoke-direct {v0, p0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/b;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    if-nez p2, :cond_2

    .line 26
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    if-eqz p2, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->i()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 29
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d;->a(Landroid/content/Context;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    .line 13
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BIZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 30
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->f:Lcom/dspread/xpos/bt2mode/dbridge4/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge4/g;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V

    :cond_0
    if-nez p4, :cond_1

    .line 33
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    if-eqz p4, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->i()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 36
    iget-object p4, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    invoke-virtual {p4, p1, p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge4/d;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V

    :cond_1
    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->f:Lcom/dspread/xpos/bt2mode/dbridge4/g;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/g;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V

    .line 54
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d;->a(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->e:Lcom/dspread/xpos/bt2mode/dbridge4/e;

    if-eqz v0, :cond_0

    .line 64
    iput-boolean p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->h:Z

    .line 65
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "BluetoothIBridgeConnManager"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->e:Lcom/dspread/xpos/bt2mode/dbridge4/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/e;->b()V

    .line 6
    iput-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->e:Lcom/dspread/xpos/bt2mode/dbridge4/e;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/b$a;->a()V

    .line 11
    iput-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->d:Lcom/dspread/xpos/bt2mode/dbridge4/b$a;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->f:Lcom/dspread/xpos/bt2mode/dbridge4/g;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/g;->a()V

    .line 18
    :cond_2
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/d;->a()V

    .line 21
    iput-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Z)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->f:Lcom/dspread/xpos/bt2mode/dbridge4/g;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/g;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V

    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 25
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->i()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 28
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    invoke-virtual {p2, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 21
    :goto_1
    monitor-exit p0

    throw p1

    .line 28
    :cond_1
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public b(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->f:Lcom/dspread/xpos/bt2mode/dbridge4/g;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/g;->b(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V

    .line 31
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/b;->g:Lcom/dspread/xpos/bt2mode/dbridge4/d;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d;->b(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V

    :cond_0
    return-void
.end method
