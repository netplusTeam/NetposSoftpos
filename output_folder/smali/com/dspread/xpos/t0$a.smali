.class Lcom/dspread/xpos/t0$a;
.super Ljava/lang/Object;
.source "VPosOTG.java"

# interfaces
.implements Lcom/dspread/xpos/otg/SerialInputOutputManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/t0;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/t0$a;->a:Lcom/dspread/xpos/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const-string p1, "Runner stopped."

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/dspread/xpos/t0$a;->a:Lcom/dspread/xpos/t0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/t0$a;->a:Lcom/dspread/xpos/t0;

    invoke-static {p1}, Lcom/dspread/xpos/t0;->a(Lcom/dspread/xpos/t0;)V

    .line 6
    iget-object p1, p0, Lcom/dspread/xpos/t0$a;->a:Lcom/dspread/xpos/t0;

    invoke-static {p1}, Lcom/dspread/xpos/t0;->b(Lcom/dspread/xpos/t0;)Lcom/dspread/xpos/t0$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/dspread/xpos/t0$a;->a:Lcom/dspread/xpos/t0;

    invoke-static {p1}, Lcom/dspread/xpos/t0;->b(Lcom/dspread/xpos/t0;)Lcom/dspread/xpos/t0$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/dspread/xpos/t0$c;->a()V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/dspread/xpos/t0;->F()Lcom/dspread/xpos/t0;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dspread/xpos/t0;->a(Lcom/dspread/xpos/t0;[B)V

    return-void
.end method
