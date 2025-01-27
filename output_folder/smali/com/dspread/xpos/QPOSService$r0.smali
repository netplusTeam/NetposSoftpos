.class Lcom/dspread/xpos/QPOSService$r0;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/QPOSService;->doTrade(ILjava/lang/String;)V
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
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$r0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$r0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-static {v0}, Lcom/dspread/xpos/QPOSService;->e(Lcom/dspread/xpos/QPOSService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/dspread/xpos/QPOSService;->c(Lcom/dspread/xpos/QPOSService;Z)Z

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$r0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-static {v0}, Lcom/dspread/xpos/QPOSService;->d(Lcom/dspread/xpos/QPOSService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$r0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$r0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$BusinessMode;->BusinessMode_DO_TRADE:Lcom/dspread/xpos/QPOSService$BusinessMode;

    invoke-static {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService;Lcom/dspread/xpos/QPOSService$BusinessMode;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$r0;->a:Lcom/dspread/xpos/QPOSService;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Error;->TIMEOUT:Lcom/dspread/xpos/QPOSService$Error;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Error;)V

    :goto_0
    return-void
.end method
