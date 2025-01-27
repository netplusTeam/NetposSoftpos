.class final Lcom/dspread/xpos/bt2mode/dbridge4/g;
.super Ljava/lang/Object;
.source "Connections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bt2mode/dbridge4/g$b;
    }
.end annotation


# instance fields
.field private a:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/bt2mode/dbridge4/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/dspread/xpos/bt2mode/dbridge4/g$b;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge4/a$f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    .line 3
    new-instance p1, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/g;Lcom/dspread/xpos/bt2mode/dbridge4/g$a;)V

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->c:Lcom/dspread/xpos/bt2mode/dbridge4/g$b;

    .line 4
    invoke-virtual {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->c:Lcom/dspread/xpos/bt2mode/dbridge4/g$b;

    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->b()V

    return-void
.end method

.method a(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p2, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b(Z)V

    .line 17
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "socket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    .line 19
    new-instance v1, Lcom/dspread/xpos/bt2mode/dbridge4/f;

    iget-object v2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    iget-object v3, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->b:Ljava/util/ArrayList;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/dspread/xpos/bt2mode/dbridge4/f;-><init>(Landroid/bluetooth/BluetoothSocket;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Lcom/dspread/xpos/bt2mode/dbridge4/a$f;Ljava/util/ArrayList;)V

    .line 22
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 23
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->c:Lcom/dspread/xpos/bt2mode/dbridge4/g$b;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/f;)V

    .line 25
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 27
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    const-string p1, "connected, after send message."

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->c:Lcom/dspread/xpos/bt2mode/dbridge4/g$b;

    invoke-static {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/g$b;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)Lcom/dspread/xpos/bt2mode/dbridge4/f;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to release connection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The device["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] may has been closed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/f;->a()V

    return-void
.end method

.method a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->c:Lcom/dspread/xpos/bt2mode/dbridge4/g$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge4/g$b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V

    return-void
.end method

.method a(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->b:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method b(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/g;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
