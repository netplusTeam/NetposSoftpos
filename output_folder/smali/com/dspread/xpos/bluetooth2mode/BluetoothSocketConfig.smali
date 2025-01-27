.class public Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;
.super Ljava/lang/Object;
.source "BluetoothSocketConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;,
        Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$BTConnectState;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "BluetoothSocketConfig"

.field private static final c:Z = true

.field private static d:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig; = null

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x0

.field public static final h:I = 0x1


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothSocket;",
            "Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;
    .locals 2

    .line 1
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->d:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->d:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    invoke-direct {v1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;-><init>()V

    sput-object v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->d:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->d:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothSocket;)Lcom/dspread/xpos/bluetooth2mode/a$b;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;

    .line 41
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->a(Landroid/bluetooth/BluetoothSocket;)Lcom/dspread/xpos/bluetooth2mode/a$b;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothSocket;

    .line 35
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a(Landroid/bluetooth/BluetoothSocket;ILjava/lang/Object;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;

    if-nez p2, :cond_0

    .line 22
    check-cast p3, Lcom/dspread/xpos/bluetooth2mode/a$b;

    .line 23
    invoke-virtual {v0, p3}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->a(Lcom/dspread/xpos/bluetooth2mode/a$b;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 25
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 26
    invoke-virtual {v0, p2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->a(I)V

    .line 28
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_2
    const-string p1, "BluetoothSocketConfig"

    const-string p2, "[updateSocketInfo] Socket doesn\'t exist."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bluetooth2mode/a$b;I)Z
    .locals 3

    .line 1
    const-string v0, "BluetoothSocketConfig"

    const-string v1, "[registerSocket] start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    .line 9
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->c(Landroid/bluetooth/BluetoothSocket;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;-><init>(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$a;)V

    .line 15
    invoke-virtual {v1, p1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->b(Landroid/bluetooth/BluetoothSocket;)V

    .line 16
    invoke-virtual {v1, p2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->a(Lcom/dspread/xpos/bluetooth2mode/a$b;)V

    .line 17
    invoke-virtual {v1, p3}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->a(I)V

    .line 18
    iget-object p2, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public b(Landroid/bluetooth/BluetoothSocket;)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/bluetooth/BluetoothSocket;)V
    .locals 4

    .line 1
    const-string v0, "BluetoothSocketConfig"

    const-string v1, "[unregisterSocket] start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;

    .line 4
    iget-object v2, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v2, "BluetoothSocketConfig[unregisterSocket]"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 6
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->a(Lcom/dspread/xpos/bluetooth2mode/a$b;)V

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v3}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->a(I)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->b(Landroid/bluetooth/BluetoothSocket;)V

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 15
    const-string v1, "BluetoothSocketConfig[disconnectSocket] Close the input stream"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 19
    const-string v1, "BluetoothSocketConfig[disconnectSocket] Close the output stream"

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothSocketConfig[disconnectSocket] Close bluetooth socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ; device name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothSocketConfig[disconnectSocket] close() of connect socket failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 35
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSocketInfo] Remove socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public d(Landroid/bluetooth/BluetoothSocket;)V
    .locals 2

    .line 1
    const-string v0, "BluetoothSocketConfig"

    const-string v1, "[unregisterSocket] start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    const-string v0, "BluetoothSocketConfig[unregisterSocket]"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 19
    const-string v0, "BluetoothSocketConfig[disconnectSocket] Close the input stream"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 23
    const-string v0, "BluetoothSocketConfig[disconnectSocket] Close the output stream"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 26
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothSocketConfig[disconnectSocket] Close bluetooth socket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; device name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothSocketConfig[disconnectSocket] close() of connect socket failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
