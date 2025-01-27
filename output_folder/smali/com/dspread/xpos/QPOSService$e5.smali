.class Lcom/dspread/xpos/QPOSService$e5;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService$Display;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/QPOSService$Display;

.field final synthetic b:Lcom/dspread/xpos/QPOSService;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/QPOSService;Lcom/dspread/xpos/QPOSService$Display;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$e5;->b:Lcom/dspread/xpos/QPOSService;

    iput-object p2, p0, Lcom/dspread/xpos/QPOSService$e5;->a:Lcom/dspread/xpos/QPOSService$Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$e5;->b:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->listener:Lcom/dspread/xpos/QPOSService$QPOSServiceListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/dspread/xpos/QPOSService$e5;->a:Lcom/dspread/xpos/QPOSService$Display;

    invoke-interface {v0, v1}, Lcom/dspread/xpos/QPOSService$QPOSServiceListener;->onRequestDisplay(Lcom/dspread/xpos/QPOSService$Display;)V

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "onRequestDisplay; listener is null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
