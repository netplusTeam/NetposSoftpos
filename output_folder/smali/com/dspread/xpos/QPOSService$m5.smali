.class Lcom/dspread/xpos/QPOSService$m5;
.super Landroid/content/BroadcastReceiver;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m5"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/QPOSService;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/QPOSService;Lcom/dspread/xpos/QPOSService$b2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/QPOSService$m5;-><init>(Lcom/dspread/xpos/QPOSService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    const-string v0, "--- : android.intent.action.HEADSET_PLUG"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 5
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ok ok ok ok "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 8
    :cond_0
    const-string/jumbo p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 10
    const-string/jumbo p1, "state no no: 0"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-static {p1}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->D1()V

    return-void

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-static {p1, v2}, Lcom/dspread/xpos/QPOSService;->a(Lcom/dspread/xpos/QPOSService;Z)Z

    .line 16
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->r1()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    const-string p2, "MyBroadcastReceiver"

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->e(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->W(Z)V

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v0}, Lcom/dspread/xpos/QPOSService;->setPosExistFlag(Z)V

    .line 21
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->F1()V

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 23
    const-string/jumbo p1, "state ok ok: 1"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->t0()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/QPOSService;->setVolume(Landroid/content/Context;)V

    .line 25
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/QPOSService;->setPosExistFlag(Z)V

    .line 26
    iget-object p1, p0, Lcom/dspread/xpos/QPOSService$m5;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {p1}, Lcom/dspread/xpos/QPOSService;->E1()V

    :cond_4
    :goto_0
    return-void
.end method
