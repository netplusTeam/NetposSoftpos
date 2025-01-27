.class Lcom/dspread/xpos/QPOSService$e0;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/QPOSService;->F1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/QPOSService;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$e0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$e0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->listener:Lcom/dspread/xpos/QPOSService$QPOSServiceListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/dspread/xpos/QPOSService$QPOSServiceListener;->onRequestQposDisconnected()V

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "onRequestQposDisconnected; listener is null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$e0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/dspread/xpos/VPosServiceUart;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/dspread/xpos/VPosServiceUart;

    invoke-virtual {v0}, Lcom/dspread/xpos/VPosServiceUart;->I()Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/VPosServiceUart$UartServiceState;->BUSY:Lcom/dspread/xpos/VPosServiceUart$UartServiceState;

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$e0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->DEVICE_BUSY:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    :cond_1
    return-void
.end method
