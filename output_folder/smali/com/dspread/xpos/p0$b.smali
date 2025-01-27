.class Lcom/dspread/xpos/p0$b;
.super Ljava/lang/Object;
.source "VPosBluetooth.java"

# interfaces
.implements Lcom/dspread/xpos/bluetoothUtil/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/p0;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/p0;Lcom/dspread/xpos/p0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/p0$b;-><init>(Lcom/dspread/xpos/p0;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnectedState>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;->CONNECTED_FAIL:Lcom/dspread/xpos/bluetoothUtil/BluetoothTools$BluetoothConnectState;

    if-ne p1, v0, :cond_1

    .line 17
    iget-object p1, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    iget-object p1, p1, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    iget-object p1, p1, Lcom/dspread/xpos/Vpos;->D:Lcom/dspread/xpos/DspFingerPrint;

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/dspread/xpos/DspFingerPrint;->s()V

    :cond_1
    return-void
.end method

.method public a([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-static {v0}, Lcom/dspread/xpos/p0;->a(Lcom/dspread/xpos/p0;)I

    move-result v0

    add-int/2addr v0, p2

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-static {v0}, Lcom/dspread/xpos/p0;->b(Lcom/dspread/xpos/p0;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-static {v1}, Lcom/dspread/xpos/p0;->a(Lcom/dspread/xpos/p0;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-static {v0, p2}, Lcom/dspread/xpos/p0;->a(Lcom/dspread/xpos/p0;I)I

    .line 5
    new-array v0, p2, [B

    .line 6
    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p1, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-static {p1}, Lcom/dspread/xpos/p0;->c(Lcom/dspread/xpos/p0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-static {p1}, Lcom/dspread/xpos/p0;->b(Lcom/dspread/xpos/p0;)[B

    move-result-object p1

    iget-object p2, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-static {p2}, Lcom/dspread/xpos/p0;->a(Lcom/dspread/xpos/p0;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/dspread/xpos/Util;->byteArray2Hex([BI)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-static {v0}, Lcom/dspread/xpos/p0;->c(Lcom/dspread/xpos/p0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/dspread/xpos/p0;->a(Lcom/dspread/xpos/p0;Z)Z

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-virtual {p1}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 14
    iget-object p1, p0, Lcom/dspread/xpos/p0$b;->a:Lcom/dspread/xpos/p0;

    invoke-static {p1}, Lcom/dspread/xpos/p0;->d(Lcom/dspread/xpos/p0;)V

    :cond_1
    return-void
.end method
