.class Lcom/dspread/xpos/d$b;
.super Ljava/lang/Object;
.source "BlueToothConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/d;->a(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/d;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/d$b;->a:Lcom/dspread/xpos/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/d$b;->a:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->b(Lcom/dspread/xpos/d;)V

    .line 2
    const-string v0, "handler --------\u65f6\u95f4\u7ed3\u675f"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/dspread/xpos/d;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/d$b;->a:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->f(Lcom/dspread/xpos/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/dspread/xpos/d;->b()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->A1()V

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/d$b;->a:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->f(Lcom/dspread/xpos/d;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/dspread/xpos/d;->b(Lcom/dspread/xpos/d;Z)Z

    .line 9
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/d;->c()Lcom/dspread/xpos/DspFingerPrint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/d$b;->a:Lcom/dspread/xpos/d;

    invoke-static {v0, v1}, Lcom/dspread/xpos/d;->a(Lcom/dspread/xpos/d;Z)Z

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/d$b;->a:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->f(Lcom/dspread/xpos/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/dspread/xpos/d;->c()Lcom/dspread/xpos/DspFingerPrint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dspread/xpos/DspFingerPrint;->p()V

    .line 13
    iget-object v0, p0, Lcom/dspread/xpos/d$b;->a:Lcom/dspread/xpos/d;

    invoke-static {v0}, Lcom/dspread/xpos/d;->f(Lcom/dspread/xpos/d;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/dspread/xpos/d;->b(Lcom/dspread/xpos/d;Z)Z

    :cond_1
    return-void
.end method
