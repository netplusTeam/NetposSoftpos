.class Lcom/dspread/xpos/bt2mode/dbridge4/g$b;
.super Ljava/lang/Object;
.source "Connections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dspread/xpos/bt2mode/dbridge4/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:[B

.field final synthetic c:Lcom/dspread/xpos/bt2mode/dbridge4/g;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge4/g;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->c:Lcom/dspread/xpos/bt2mode/dbridge4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a:Ljava/util/List;

    .line 4
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->b:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge4/g;Lcom/dspread/xpos/bt2mode/dbridge4/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/g;)V

    return-void
.end method

.method private a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)Lcom/dspread/xpos/bt2mode/dbridge4/f;
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->b:[B

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dspread/xpos/bt2mode/dbridge4/f;

    .line 20
    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b()Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 19
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge4/g$b;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)Lcom/dspread/xpos/bt2mode/dbridge4/f;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)Lcom/dspread/xpos/bt2mode/dbridge4/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->b:[B

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 28
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "write data in Connections:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)Lcom/dspread/xpos/bt2mode/dbridge4/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1, p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge4/f;->a([BI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/dspread/xpos/bt2mode/dbridge4/f;)V
    .locals 3

    .line 9
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/f;->b()Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)Lcom/dspread/xpos/bt2mode/dbridge4/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->b:[B

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->b:[B

    monitor-enter v0

    .line 16
    :try_start_1
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->b:[B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dspread/xpos/bt2mode/dbridge4/f;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/dspread/xpos/bt2mode/dbridge4/f;->a()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
