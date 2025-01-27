.class Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;
.super Ljava/lang/Object;
.source "BluetoothSocketConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/bluetooth/BluetoothSocket;

.field private c:Lcom/dspread/xpos/bluetooth2mode/a$b;

.field final synthetic d:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->d:Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput p1, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;-><init>(Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->b:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method public a(Landroid/bluetooth/BluetoothSocket;)Lcom/dspread/xpos/bluetooth2mode/a$b;
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->c:Lcom/dspread/xpos/bluetooth2mode/a$b;

    return-object p1
.end method

.method protected a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->a:I

    return-void
.end method

.method protected a(Lcom/dspread/xpos/bluetooth2mode/a$b;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->c:Lcom/dspread/xpos/bluetooth2mode/a$b;

    return-void
.end method

.method protected b(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bluetooth2mode/BluetoothSocketConfig$b;->b:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method
