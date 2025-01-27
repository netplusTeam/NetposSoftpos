.class Lcom/dspread/xpos/t0$d;
.super Ljava/lang/Thread;
.source "VPosOTG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/t0;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/t0;Lcom/dspread/xpos/t0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/t0$d;-><init>(Lcom/dspread/xpos/t0;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 6

    monitor-enter p0

    .line 1
    const/16 v0, 0x1000

    :try_start_0
    new-array v1, v0, [B

    .line 5
    :cond_0
    :goto_0
    invoke-static {}, Lcom/dspread/xpos/t0;->G()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-static {v2}, Lcom/dspread/xpos/t0;->c(Lcom/dspread/xpos/t0;)Lcom/dspread/xpos/otg/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dspread/xpos/otg/a;->a([BI)I

    move-result v2

    if-lez v2, :cond_0

    .line 10
    iget-object v3, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-static {v3}, Lcom/dspread/xpos/t0;->d(Lcom/dspread/xpos/t0;)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v4, 0x2800

    if-gt v3, v4, :cond_0

    .line 14
    new-array v3, v2, [B

    .line 15
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v3, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-static {v3}, Lcom/dspread/xpos/t0;->d(Lcom/dspread/xpos/t0;)I

    move-result v3

    if-nez v3, :cond_2

    aget-byte v3, v1, v4

    if-eqz v3, :cond_3

    .line 19
    :cond_2
    iget-object v3, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-static {v3}, Lcom/dspread/xpos/t0;->e(Lcom/dspread/xpos/t0;)[B

    move-result-object v3

    iget-object v5, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-static {v5}, Lcom/dspread/xpos/t0;->d(Lcom/dspread/xpos/t0;)I

    move-result v5

    invoke-static {v1, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v3, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-static {v3, v2}, Lcom/dspread/xpos/t0;->a(Lcom/dspread/xpos/t0;I)I

    .line 22
    iget-object v2, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-static {v2}, Lcom/dspread/xpos/t0;->f(Lcom/dspread/xpos/t0;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 23
    iget-object v2, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-static {v2}, Lcom/dspread/xpos/t0;->e(Lcom/dspread/xpos/t0;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-static {v3}, Lcom/dspread/xpos/t0;->d(Lcom/dspread/xpos/t0;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([BI)Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-static {v5}, Lcom/dspread/xpos/t0;->f(Lcom/dspread/xpos/t0;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/dspread/xpos/t0;->a(Lcom/dspread/xpos/t0;Z)Z

    .line 28
    :cond_3
    iget-object v2, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-virtual {v2}, Lcom/dspread/xpos/Vpos;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-virtual {v2, v4}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 30
    iget-object v2, p0, Lcom/dspread/xpos/t0$d;->a:Lcom/dspread/xpos/t0;

    invoke-virtual {v2}, Lcom/dspread/xpos/t0;->I()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
