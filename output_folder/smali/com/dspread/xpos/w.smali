.class public Lcom/dspread/xpos/w;
.super Ljava/lang/Object;
.source "GetCardNo.java"


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/w;->a:Lcom/dspread/xpos/QPOSService;

    return-void
.end method


# virtual methods
.method protected a(Lcom/dspread/xpos/Vpos;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/dspread/xpos/i;

    const/16 v1, 0x10

    const/16 v2, 0x40

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/i;-><init>(III)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i;)V

    .line 3
    invoke-virtual {p1, v3}, Lcom/dspread/xpos/Vpos;->d(I)Lcom/dspread/xpos/j;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/w;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cardNoStr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dspread/xpos/j;->e()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/w;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->n(Ljava/lang/String;)V

    return-void
.end method
