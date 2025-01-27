.class Lcom/dspread/xpos/QPOSService$f0;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/QPOSService;->D1()V
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
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$f0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$f0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v1, v0, Lcom/dspread/xpos/QPOSService;->listener:Lcom/dspread/xpos/QPOSService$QPOSServiceListener;

    if-eqz v1, :cond_1

    .line 2
    invoke-static {v0}, Lcom/dspread/xpos/QPOSService;->f(Lcom/dspread/xpos/QPOSService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$f0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->listener:Lcom/dspread/xpos/QPOSService$QPOSServiceListener;

    invoke-interface {v0}, Lcom/dspread/xpos/QPOSService$QPOSServiceListener;->onRequestNoQposDetectedUnbond()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$f0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->listener:Lcom/dspread/xpos/QPOSService$QPOSServiceListener;

    invoke-interface {v0}, Lcom/dspread/xpos/QPOSService$QPOSServiceListener;->onRequestNoQposDetected()V

    goto :goto_0

    .line 8
    :cond_1
    const-string v0, "onRequestNoQposDetected; listener is null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
