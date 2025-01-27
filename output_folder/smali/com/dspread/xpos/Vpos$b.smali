.class Lcom/dspread/xpos/Vpos$b;
.super Ljava/lang/Thread;
.source "Vpos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/Vpos;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/Vpos;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/Vpos;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/Vpos$b;->a:Lcom/dspread/xpos/Vpos;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/dspread/xpos/Vpos$b;->a:Lcom/dspread/xpos/Vpos;

    iget-object v2, v2, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-nez v2, :cond_1

    .line 2
    const-string/jumbo v2, "show led no listener"

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v2, p0, Lcom/dspread/xpos/Vpos$b;->a:Lcom/dspread/xpos/Vpos;

    iget-object v2, v2, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->F0()Lcom/dspread/xpos/c0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/c0;->a(Z)V

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/Vpos$b;->a:Lcom/dspread/xpos/Vpos;

    invoke-static {v1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :cond_1
    const/16 v3, 0x96

    .line 31
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/dspread/xpos/QPOSService;->L(I)V

    const/16 v2, 0x32

    move v3, v1

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_6

    .line 34
    sget-boolean v4, Lcom/dspread/xpos/Vpos;->O:Z

    if-nez v4, :cond_6

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/dspread/xpos/Vpos$b;->a:Lcom/dspread/xpos/Vpos;

    iget-object v4, v4, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 36
    invoke-virtual {v4}, Lcom/dspread/xpos/QPOSService;->F0()Lcom/dspread/xpos/c0;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/dspread/xpos/c0;->b(Z)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 38
    invoke-virtual {v4}, Lcom/dspread/xpos/QPOSService;->F0()Lcom/dspread/xpos/c0;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/dspread/xpos/c0;->e(Z)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x3

    if-ne v3, v6, :cond_4

    .line 40
    invoke-virtual {v4}, Lcom/dspread/xpos/QPOSService;->F0()Lcom/dspread/xpos/c0;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/dspread/xpos/c0;->c(Z)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    if-ne v3, v6, :cond_5

    .line 42
    invoke-virtual {v4}, Lcom/dspread/xpos/QPOSService;->F0()Lcom/dspread/xpos/c0;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/dspread/xpos/c0;->d(Z)V

    const/16 v2, 0x352

    goto :goto_1

    .line 45
    :cond_5
    invoke-virtual {v4}, Lcom/dspread/xpos/QPOSService;->F0()Lcom/dspread/xpos/c0;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/dspread/xpos/c0;->a(Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v2

    .line 48
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :cond_6
    iget-object v2, p0, Lcom/dspread/xpos/Vpos$b;->a:Lcom/dspread/xpos/Vpos;

    iget-object v2, v2, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v2, :cond_7

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    .line 54
    :try_start_2
    const-string/jumbo v2, "show led thread interrupted."

    invoke-static {v2}, Lcom/dspread/xpos/Tip;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    iget-object v2, p0, Lcom/dspread/xpos/Vpos$b;->a:Lcom/dspread/xpos/Vpos;

    iget-object v2, v2, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v2, :cond_7

    .line 57
    :goto_2
    invoke-virtual {v2}, Lcom/dspread/xpos/QPOSService;->F0()Lcom/dspread/xpos/c0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/c0;->a(Z)V

    .line 59
    :cond_7
    iget-object v1, p0, Lcom/dspread/xpos/Vpos$b;->a:Lcom/dspread/xpos/Vpos;

    invoke-static {v1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    .line 60
    :goto_3
    iget-object v3, p0, Lcom/dspread/xpos/Vpos$b;->a:Lcom/dspread/xpos/Vpos;

    iget-object v3, v3, Lcom/dspread/xpos/Vpos;->C:Lcom/dspread/xpos/QPOSService;

    if-eqz v3, :cond_8

    .line 61
    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->F0()Lcom/dspread/xpos/c0;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/dspread/xpos/c0;->a(Z)V

    .line 63
    :cond_8
    iget-object v1, p0, Lcom/dspread/xpos/Vpos$b;->a:Lcom/dspread/xpos/Vpos;

    invoke-static {v1, v0}, Lcom/dspread/xpos/Vpos;->a(Lcom/dspread/xpos/Vpos;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 64
    throw v2
.end method
