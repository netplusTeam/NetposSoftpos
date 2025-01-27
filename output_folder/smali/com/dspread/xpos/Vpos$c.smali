.class Lcom/dspread/xpos/Vpos$c;
.super Ljava/lang/Thread;
.source "Vpos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/Vpos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/Vpos;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/Vpos;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/Vpos$c;->a:Lcom/dspread/xpos/Vpos;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/Vpos;Lcom/dspread/xpos/Vpos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/Vpos$c;-><init>(Lcom/dspread/xpos/Vpos;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is stop t 111 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/Vpos$c;->a:Lcom/dspread/xpos/Vpos;

    invoke-static {v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/Vpos;)[Lcom/dspread/xpos/i0;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i0;)Lcom/dspread/xpos/i0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/i0;)Lcom/dspread/xpos/i0;

    :cond_0
    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Lcom/dspread/xpos/Vpos;->a(Z)Z

    .line 11
    const-string/jumbo v0, "receivePacketOk111====true"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vpos: receivePacket Exception e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
