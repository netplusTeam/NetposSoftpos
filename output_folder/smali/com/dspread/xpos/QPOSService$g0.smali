.class Lcom/dspread/xpos/QPOSService$g0;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/QPOSService;->isBootMode()Z
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
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$g0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$g0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    if-eqz v0, :cond_1

    .line 3
    const-string v1, "445000010000050000000010"

    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/Vpos;->f([B)V

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$g0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/Vpos;->k(Z)V

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$g0;->a:Lcom/dspread/xpos/QPOSService;

    iget-object v0, v0, Lcom/dspread/xpos/QPOSService;->pos:Lcom/dspread/xpos/Vpos;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/Vpos;->e(I)[B

    move-result-object v0

    .line 6
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v2, "445000010000000000000015"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$g0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-static {v0, v1}, Lcom/dspread/xpos/QPOSService;->b(Lcom/dspread/xpos/QPOSService;Z)Z

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$g0;->a:Lcom/dspread/xpos/QPOSService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dspread/xpos/QPOSService;->b(Lcom/dspread/xpos/QPOSService;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
