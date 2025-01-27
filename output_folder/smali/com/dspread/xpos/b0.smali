.class public Lcom/dspread/xpos/b0;
.super Ljava/lang/Object;
.source "LedManager.java"


# static fields
.field private static final f:Ljava/lang/String; = "LedManager"

.field private static final g:Ljava/lang/String; = "sim.com.ACTION_SHOW_BLUE"

.field private static final h:Ljava/lang/String; = "sim.com.ACTION_SHOW_YELLOW"

.field private static final i:Ljava/lang/String; = "sim.com.ACTION_SHOW_GREEN"

.field private static final j:Ljava/lang/String; = "sim.com.ACTION_SHOW_RED"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/b0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/b0;->b:Z

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "sim.com.ACTION_SHOW_BLUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    const-string/jumbo v1, "showBlue"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/b0;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/b0;->d:Z

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "sim.com.ACTION_SHOW_GREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    const-string/jumbo v1, "showGreen"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/b0;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/b0;->e:Z

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "sim.com.ACTION_SHOW_RED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    const-string/jumbo v1, "showRed"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/b0;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->b:Z

    return v0
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/b0;->c:Z

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "sim.com.ACTION_SHOW_YELLOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    const-string/jumbo v1, "showYellow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/b0;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/b0;->c:Z

    return v0
.end method
