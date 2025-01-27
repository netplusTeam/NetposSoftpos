.class Lcom/dspread/xpos/VPosServiceUart$b;
.super Lcom/dspread/sp/a$b;
.source "VPosServiceUart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/VPosServiceUart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/dspread/xpos/VPosServiceUart;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/VPosServiceUart;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/VPosServiceUart$b;->n:Lcom/dspread/xpos/VPosServiceUart;

    invoke-direct {p0}, Lcom/dspread/sp/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VServiceUart status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart$b;->n:Lcom/dspread/xpos/VPosServiceUart;

    invoke-static {v0}, Lcom/dspread/xpos/VPosServiceUart;->a(Lcom/dspread/xpos/VPosServiceUart;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.dspread.new"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 9
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 11
    sget-object p1, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->BUSY:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    invoke-static {p1}, Lcom/dspread/xpos/VPosServiceUart;->a(Lcom/dspread/xpos/VPosServiceUart$UartServiceState;)Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/VPosServiceUart$b;->n:Lcom/dspread/xpos/VPosServiceUart;

    iget-object p1, p1, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart$b;->n:Lcom/dspread/xpos/VPosServiceUart;

    iget-object v0, v0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceUart isToUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/VPosServiceUart$b;->n:Lcom/dspread/xpos/VPosServiceUart;

    iget-object v1, v1, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart$b;->n:Lcom/dspread/xpos/VPosServiceUart;

    iget-object v0, v0, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 18
    :cond_0
    const-string v0, "ServiceUart listener == null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "ispManager updateSpSuccess"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart$b;->n:Lcom/dspread/xpos/VPosServiceUart;

    invoke-static {v0}, Lcom/dspread/xpos/VPosServiceUart;->b(Lcom/dspread/xpos/VPosServiceUart;)V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart$b;->n:Lcom/dspread/xpos/VPosServiceUart;

    invoke-static {v0}, Lcom/dspread/xpos/VPosServiceUart;->c(Lcom/dspread/xpos/VPosServiceUart;)Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    return-void
.end method

.method public read([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    const-string/jumbo p1, "read normal uart service null"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read normal uart service= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 14
    :cond_1
    array-length v1, p1

    if-lez v1, :cond_3

    .line 16
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    invoke-static {}, Lcom/dspread/xpos/VPosServiceUart;->F()I

    move-result p1

    if-nez p1, :cond_2

    aget-byte p1, v0, v2

    if-eqz p1, :cond_3

    .line 18
    :cond_2
    invoke-static {}, Lcom/dspread/xpos/VPosServiceUart;->G()[B

    move-result-object p1

    invoke-static {}, Lcom/dspread/xpos/VPosServiceUart;->F()I

    move-result v3

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-static {v1}, Lcom/dspread/xpos/VPosServiceUart;->l(I)I

    .line 20
    iget-object p1, p0, Lcom/dspread/xpos/VPosServiceUart$b;->n:Lcom/dspread/xpos/VPosServiceUart;

    invoke-static {p1}, Lcom/dspread/xpos/VPosServiceUart;->d(Lcom/dspread/xpos/VPosServiceUart;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 21
    invoke-static {}, Lcom/dspread/xpos/VPosServiceUart;->G()[B

    move-result-object p1

    invoke-static {}, Lcom/dspread/xpos/VPosServiceUart;->F()I

    move-result v0

    invoke-static {p1, v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([BI)Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/dspread/xpos/VPosServiceUart$b;->n:Lcom/dspread/xpos/VPosServiceUart;

    invoke-static {v0}, Lcom/dspread/xpos/VPosServiceUart;->d(Lcom/dspread/xpos/VPosServiceUart;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/dspread/xpos/VPosServiceUart;->a(Lcom/dspread/xpos/VPosServiceUart;Z)Z

    :cond_3
    return-void
.end method
