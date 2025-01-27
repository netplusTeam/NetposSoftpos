.class Lcom/dspread/xpos/QPOSService$n5;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n5"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/QPOSService$n5;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/dspread/xpos/QPOSService;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dspread/xpos/QPOSService;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/dspread/xpos/QPOSService$n5;->a:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/dspread/xpos/QPOSService;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    check-cast v0, Lcom/dspread/xpos/VPosServiceUart;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/VPosServiceUart;->p(Z)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/QPOSService;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {v0}, Lcom/dspread/xpos/Vpos;->A()Z

    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread open :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/dspread/xpos/QPOSService;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    invoke-static {}, Lcom/dspread/xpos/QPOSService;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/QPOSService;->b(Lcom/dspread/xpos/QPOSService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/QPOSService;->I(I)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/dspread/xpos/QPOSService;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->F1()V

    :cond_2
    :goto_0
    return-void
.end method
