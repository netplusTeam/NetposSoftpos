.class final Lcom/dspread/xpos/utils/b$a;
.super Landroid/content/BroadcastReceiver;
.source "CvmApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/utils/b;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/utils/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/utils/b$a;->a:Lcom/dspread/xpos/utils/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 2
    const-string p2, "wifi_state"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    const-string p1, "wifi enable"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/dspread/xpos/utils/b$a;->a:Lcom/dspread/xpos/utils/b;

    invoke-static {p1}, Lcom/dspread/xpos/utils/b;->a(Lcom/dspread/xpos/utils/b;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/dspread/xpos/utils/b$a;->a:Lcom/dspread/xpos/utils/b;

    invoke-static {p1, p2}, Lcom/dspread/xpos/utils/b;->a(Lcom/dspread/xpos/utils/b;Z)Z

    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/dspread/xpos/utils/b$a;->a:Lcom/dspread/xpos/utils/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/dspread/xpos/utils/b;->a(Lcom/dspread/xpos/utils/b;Z)Z

    .line 29
    const-string p1, "wifi disable"

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
