.class Lcom/dspread/xpos/bt2mode/dbridge/d$a;
.super Ljava/lang/Thread;
.source "ConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "dSpread-DBridge"


# instance fields
.field private final a:Landroid/bluetooth/BluetoothServerSocket;

.field private volatile b:Z

.field final synthetic c:Lcom/dspread/xpos/bt2mode/dbridge/d;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge/d;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge/d$a;->c:Lcom/dspread/xpos/bt2mode/dbridge/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/d$a;->b:Z

    .line 5
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge/d;->a(Lcom/dspread/xpos/bt2mode/dbridge/d;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "dSpread-DBridge"

    if-nez v1, :cond_0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    .line 7
    sget-object p1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->k:Ljava/util/UUID;

    invoke-direct {p0, v2, p1}, Lcom/dspread/xpos/bt2mode/dbridge/d$a;->a(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsecureRfcomm+++++++"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge/d;->b(Lcom/dspread/xpos/bt2mode/dbridge/d;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    sget-object v1, Lcom/dspread/xpos/bt2mode/dbridge/BluetoothDBridgeDevice;->k:Ljava/util/UUID;

    .line 13
    invoke-virtual {p1, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureRfcomm+++++++"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    const-string v1, "ConnectionListener"

    const-string v2, "Connection listen() failed"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_0
    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/d$a;->a:Landroid/bluetooth/BluetoothServerSocket;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 7

    .line 9
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    .line 10
    const-string v1, "listenUsingInsecureRfcommWithServiceRecord"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/util/UUID;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge/d$a;->c:Lcom/dspread/xpos/bt2mode/dbridge/d;

    .line 15
    invoke-static {v1}, Lcom/dspread/xpos/bt2mode/dbridge/d;->b(Lcom/dspread/xpos/bt2mode/dbridge/d;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/d$a;->a:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 5
    const-string v0, "mmServerSocket closed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    const-string v2, "close() of server failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BEGIN mAcceptThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    const-string v0, "AcceptThread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/d$a;->b:Z

    if-eqz v0, :cond_3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge/d$a;->a:Landroid/bluetooth/BluetoothServerSocket;

    if-nez v0, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 17
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge/d$a;->c:Lcom/dspread/xpos/bt2mode/dbridge/d;

    .line 18
    invoke-static {v2}, Lcom/dspread/xpos/bt2mode/dbridge/d;->c(Lcom/dspread/xpos/bt2mode/dbridge/d;)Lcom/dspread/xpos/bt2mode/dbridge/d$b;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge/d$a;->c:Lcom/dspread/xpos/bt2mode/dbridge/d;

    invoke-static {v2}, Lcom/dspread/xpos/bt2mode/dbridge/d;->c(Lcom/dspread/xpos/bt2mode/dbridge/d;)Lcom/dspread/xpos/bt2mode/dbridge/d$b;

    move-result-object v2

    .line 22
    invoke-interface {v2, v0}, Lcom/dspread/xpos/bt2mode/dbridge/d$b;->a(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    const-string v2, "accept() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_3
    const-string v0, "END mAcceptThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
