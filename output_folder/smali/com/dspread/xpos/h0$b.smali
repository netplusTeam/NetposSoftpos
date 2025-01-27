.class Lcom/dspread/xpos/h0$b;
.super Ljava/lang/Object;
.source "POS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/h0;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/h0$b;->a:Lcom/dspread/xpos/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/h0;Lcom/dspread/xpos/h0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/h0$b;-><init>(Lcom/dspread/xpos/h0;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "run========"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/h0$b;->a:Lcom/dspread/xpos/h0;

    invoke-static {v0}, Lcom/dspread/xpos/h0;->b(Lcom/dspread/xpos/h0;)Lcom/dspread/xpos/i0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dspread/xpos/h0;->a(Lcom/dspread/xpos/h0;Lcom/dspread/xpos/i0;)Lcom/dspread/xpos/i0;

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/h0$b;->a:Lcom/dspread/xpos/h0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dspread/xpos/h0;->a(Lcom/dspread/xpos/h0;Z)Z

    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/h0$b;->a:Lcom/dspread/xpos/h0;

    invoke-static {v2}, Lcom/dspread/xpos/h0;->a(Lcom/dspread/xpos/h0;)Lcom/dspread/xpos/i0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receivePacketOk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/h0$b;->a:Lcom/dspread/xpos/h0;

    invoke-static {v2}, Lcom/dspread/xpos/h0;->c(Lcom/dspread/xpos/h0;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
