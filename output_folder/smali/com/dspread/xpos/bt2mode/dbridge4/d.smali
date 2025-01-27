.class final Lcom/dspread/xpos/bt2mode/dbridge4/d;
.super Ljava/lang/Object;
.source "BluetoothIBridgeGatt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bt2mode/dbridge4/d$b;,
        Lcom/dspread/xpos/bt2mode/dbridge4/d$c;
    }
.end annotation


# static fields
.field private static final e:I = 0x14


# instance fields
.field private a:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

.field private b:Landroid/bluetooth/BluetoothManager;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/bt2mode/dbridge4/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/dspread/xpos/bt2mode/dbridge4/d$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dspread/xpos/bt2mode/dbridge4/a$f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    .line 3
    new-instance p2, Lcom/dspread/xpos/bt2mode/dbridge4/d$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/dspread/xpos/bt2mode/dbridge4/d$b;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/d;Lcom/dspread/xpos/bt2mode/dbridge4/d$a;)V

    iput-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->d:Lcom/dspread/xpos/bt2mode/dbridge4/d$b;

    .line 4
    invoke-virtual {p2}, Lcom/dspread/xpos/bt2mode/dbridge4/d$b;->a()V

    .line 5
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->b:Landroid/bluetooth/BluetoothManager;

    if-nez p2, :cond_0

    .line 7
    const-string p2, "bluetooth"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->b:Landroid/bluetooth/BluetoothManager;

    if-nez p1, :cond_0

    .line 10
    const-string p1, "Unable to initialize BluetoothManager"

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge4/d;)Lcom/dspread/xpos/bt2mode/dbridge4/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->d:Lcom/dspread/xpos/bt2mode/dbridge4/d$b;

    return-object p0
.end method

.method static synthetic b(Lcom/dspread/xpos/bt2mode/dbridge4/d;)Landroid/bluetooth/BluetoothManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->b:Landroid/bluetooth/BluetoothManager;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->d:Lcom/dspread/xpos/bt2mode/dbridge4/d$b;

    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/d$b;->b()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    .line 9
    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->c:Ljava/util/ArrayList;

    return-void
.end method

.method a(Landroid/content/Context;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    .locals 6

    .line 10
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    iget-object v4, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->a:Lcom/dspread/xpos/bt2mode/dbridge4/a$f;

    iget-object v5, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->c:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/d;Landroid/content/Context;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;Lcom/dspread/xpos/bt2mode/dbridge4/a$f;Ljava/util/ArrayList;)V

    return-void
.end method

.method a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->d:Lcom/dspread/xpos/bt2mode/dbridge4/d$b;

    invoke-static {v0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/d$b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/d$b;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;)Lcom/dspread/xpos/bt2mode/dbridge4/d$c;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to release gatt connection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The gatt device["

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

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/d$c;->b()V

    return-void
.end method

.method a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->d:Lcom/dspread/xpos/bt2mode/dbridge4/d$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dspread/xpos/bt2mode/dbridge4/d$b;->a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;[BI)V

    return-void
.end method

.method a(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->c:Ljava/util/ArrayList;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method b()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->d:Lcom/dspread/xpos/bt2mode/dbridge4/d$b;

    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/d$b;->b()V

    return-void
.end method

.method b(Lcom/dspread/xpos/bt2mode/dbridge4/a$d;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/d;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
