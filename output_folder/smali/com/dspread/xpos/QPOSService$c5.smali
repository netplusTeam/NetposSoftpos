.class Lcom/dspread/xpos/QPOSService$c5;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/QPOSService;->p(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dspread/xpos/QPOSService;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/QPOSService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$c5;->b:Lcom/dspread/xpos/QPOSService;

    iput-boolean p2, p0, Lcom/dspread/xpos/QPOSService$c5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$c5;->b:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->listener:Lcom/dspread/xpos/QPOSService$QPOSServiceListener;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/dspread/xpos/QPOSService$c5;->a:Z

    invoke-interface {v0, v1}, Lcom/dspread/xpos/QPOSService$QPOSServiceListener;->onRequestSendTR31KeyResult(Z)V

    goto :goto_0

    .line 4
    :cond_0
    const-string/jumbo v0, "onRequestSendTR31KeyResult; listener is null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
