.class Lcom/dspread/xpos/q0$b;
.super Ljava/lang/Object;
.source "VPosBluetooth_2mode.java"

# interfaces
.implements Lcom/dspread/xpos/bluetoothUtil/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/q0;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/q0$b;->a:Lcom/dspread/xpos/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/q0;Lcom/dspread/xpos/q0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/q0$b;-><init>(Lcom/dspread/xpos/q0;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V
    .locals 1

    .line 11
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-ne p1, v0, :cond_0

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/q0$b;->a:Lcom/dspread/xpos/q0;

    iget-object p1, p1, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    :cond_0
    return-void
.end method

.method public a([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/q0$b;->a:Lcom/dspread/xpos/q0;

    invoke-static {v0}, Lcom/dspread/xpos/q0;->a(Lcom/dspread/xpos/q0;)I

    move-result v0

    add-int/2addr v0, p2

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/q0$b;->a:Lcom/dspread/xpos/q0;

    invoke-static {v0}, Lcom/dspread/xpos/q0;->b(Lcom/dspread/xpos/q0;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/q0$b;->a:Lcom/dspread/xpos/q0;

    invoke-static {v1}, Lcom/dspread/xpos/q0;->a(Lcom/dspread/xpos/q0;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/q0$b;->a:Lcom/dspread/xpos/q0;

    invoke-static {v0, p2}, Lcom/dspread/xpos/q0;->a(Lcom/dspread/xpos/q0;I)I

    .line 5
    new-array v0, p2, [B

    .line 6
    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/q0$b;->a:Lcom/dspread/xpos/q0;

    invoke-virtual {p1}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/dspread/xpos/q0$b;->a:Lcom/dspread/xpos/q0;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/q0$b;->a:Lcom/dspread/xpos/q0;

    invoke-static {p1}, Lcom/dspread/xpos/q0;->c(Lcom/dspread/xpos/q0;)V

    :cond_0
    return-void
.end method
