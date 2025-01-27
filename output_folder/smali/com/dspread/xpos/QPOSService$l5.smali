.class Lcom/dspread/xpos/QPOSService$l5;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/QPOSService;->get_encpin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dspread/xpos/QPOSService;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/QPOSService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$l5;->b:Lcom/dspread/xpos/QPOSService;

    iput-object p2, p0, Lcom/dspread/xpos/QPOSService$l5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$l5;->b:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->listener:Lcom/dspread/xpos/QPOSService$QPOSServiceListener;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "get_encpin; listener is null"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/QPOSService$l5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dspread/xpos/QPOSService$QPOSServiceListener;->onWaitingforData(Ljava/lang/String;)V

    return-void
.end method
