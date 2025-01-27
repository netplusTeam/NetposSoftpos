.class Lcom/dspread/xpos/u0$b;
.super Ljava/lang/Thread;
.source "VPosUart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/u0;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/u0;Lcom/dspread/xpos/u0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/u0$b;-><init>(Lcom/dspread/xpos/u0;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    .line 1
    const/16 v0, 0x400

    :try_start_0
    new-array v1, v0, [B

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read status333 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_5

    .line 6
    :try_start_2
    iget-object v2, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-static {v2}, Lcom/dspread/xpos/u0;->a(Lcom/dspread/xpos/u0;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    const-string/jumbo v0, "pos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readThread> update>\u7ed3\u675f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-static {v2}, Lcom/dspread/xpos/u0;->a(Lcom/dspread/xpos/u0;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    iget-object v2, v2, Lcom/dspread/xpos/u0;->Q:Ljava/io/InputStream;

    if-nez v2, :cond_1

    .line 11
    const-string/jumbo v0, "pos"

    const-string/jumbo v1, "readThread> update>inread == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_1
    goto/16 :goto_2

    .line 14
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the thread is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    iget-object v2, v2, Lcom/dspread/xpos/u0;->Q:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_4

    .line 21
    iget-object v2, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    iget-object v2, v2, Lcom/dspread/xpos/u0;->Q:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_4

    .line 27
    new-array v4, v2, [B

    .line 28
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_READ>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 30
    iget-object v4, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-static {v4}, Lcom/dspread/xpos/u0;->b(Lcom/dspread/xpos/u0;)I

    move-result v4

    if-nez v4, :cond_3

    aget-byte v4, v1, v3

    if-eqz v4, :cond_4

    .line 31
    :cond_3
    iget-object v4, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-static {v4}, Lcom/dspread/xpos/u0;->c(Lcom/dspread/xpos/u0;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-static {v5}, Lcom/dspread/xpos/u0;->b(Lcom/dspread/xpos/u0;)I

    move-result v5

    invoke-static {v1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v3, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-static {v3, v2}, Lcom/dspread/xpos/u0;->a(Lcom/dspread/xpos/u0;I)I

    .line 33
    const-string v2, "MESSAGE_READ>>  \u8bfb\u5165\u5b8c\u6bd5"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-static {v2}, Lcom/dspread/xpos/u0;->d(Lcom/dspread/xpos/u0;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 35
    iget-object v2, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-static {v2}, Lcom/dspread/xpos/u0;->c(Lcom/dspread/xpos/u0;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-static {v3}, Lcom/dspread/xpos/u0;->b(Lcom/dspread/xpos/u0;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([BI)Ljava/lang/String;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    invoke-static {v4}, Lcom/dspread/xpos/u0;->d(Lcom/dspread/xpos/u0;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/dspread/xpos/u0;->a(Lcom/dspread/xpos/u0;Z)Z

    .line 41
    :cond_4
    iget-object v2, p0, Lcom/dspread/xpos/u0$b;->a:Lcom/dspread/xpos/u0;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/dspread/xpos/u0;->b(Lcom/dspread/xpos/u0;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    .line 52
    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
