.class public Lcom/dspread/xpos/c0;
.super Ljava/lang/Object;
.source "LedOperation.java"


# static fields
.field private static d:Lcom/dspread/xpos/c0;


# instance fields
.field private a:Lcom/xcheng/ledmanager/LedManager;

.field private b:Lcom/dspread/xpos/b0;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/c0;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dspread/xpos/c0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/c0;->d:Lcom/dspread/xpos/c0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/c0;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/c0;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dspread/xpos/c0;->d:Lcom/dspread/xpos/c0;

    .line 4
    :cond_0
    sget-object p0, Lcom/dspread/xpos/c0;->d:Lcom/dspread/xpos/c0;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 5
    const-string v0, "init d20 sound"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/dspread/xpos/b0;

    iget-object v1, p0, Lcom/dspread/xpos/c0;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dspread/xpos/b0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/xcheng/ledmanager/LedManager;

    iget-object v1, p0, Lcom/dspread/xpos/c0;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xcheng/ledmanager/LedManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .line 11
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/dspread/xpos/b0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object p1, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/b0;->a(Z)V

    .line 15
    iget-object p1, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/b0;->d(Z)V

    .line 16
    iget-object p1, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/b0;->b(Z)V

    .line 17
    iget-object p1, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/b0;->c(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {p1}, Lcom/dspread/xpos/b0;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/b0;->a(Z)V

    .line 20
    iget-object p1, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/b0;->d(Z)V

    .line 21
    iget-object p1, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/b0;->b(Z)V

    .line 22
    iget-object p1, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/b0;->c(Z)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/xcheng/ledmanager/LedManager;->isAllLedHide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object p1, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {p1, v1}, Lcom/xcheng/ledmanager/LedManager;->showBlue(Z)V

    .line 27
    iget-object p1, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {p1, v1}, Lcom/xcheng/ledmanager/LedManager;->showYellow(Z)V

    .line 28
    iget-object p1, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {p1, v1}, Lcom/xcheng/ledmanager/LedManager;->showGreen(Z)V

    .line 29
    iget-object p1, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {p1, v1}, Lcom/xcheng/ledmanager/LedManager;->showRed(Z)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 31
    iget-object p1, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {p1, v2}, Lcom/xcheng/ledmanager/LedManager;->showBlue(Z)V

    .line 32
    iget-object p1, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {p1, v2}, Lcom/xcheng/ledmanager/LedManager;->showYellow(Z)V

    .line 33
    iget-object p1, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {p1, v2}, Lcom/xcheng/ledmanager/LedManager;->showGreen(Z)V

    .line 34
    iget-object p1, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {p1, v2}, Lcom/xcheng/ledmanager/LedManager;->showRed(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected b(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/b0;->a(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {v0, p1}, Lcom/xcheng/ledmanager/LedManager;->showBlue(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b()Z
    .locals 2

    .line 6
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {v0}, Lcom/dspread/xpos/b0;->a()Z

    move-result v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {v0}, Lcom/xcheng/ledmanager/LedManager;->isAllLedHide()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected c(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/b0;->b(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {v0, p1}, Lcom/xcheng/ledmanager/LedManager;->showGreen(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected c()Z
    .locals 2

    .line 6
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {v0}, Lcom/dspread/xpos/b0;->c()Z

    move-result v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {v0}, Lcom/xcheng/ledmanager/LedManager;->isBlueLedShow()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected d(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/b0;->c(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {v0, p1}, Lcom/xcheng/ledmanager/LedManager;->showRed(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected d()Z
    .locals 2

    .line 6
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {v0}, Lcom/dspread/xpos/b0;->d()Z

    move-result v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {v0}, Lcom/xcheng/ledmanager/LedManager;->isGreenLedShow()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected e(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/b0;->d(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {v0, p1}, Lcom/xcheng/ledmanager/LedManager;->showYellow(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected e()Z
    .locals 2

    .line 6
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {v0}, Lcom/dspread/xpos/b0;->e()Z

    move-result v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {v0}, Lcom/xcheng/ledmanager/LedManager;->isRedLedShow()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected f()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/dspread/xpos/utils/DeviceModelUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "D50"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/c0;->b:Lcom/dspread/xpos/b0;

    invoke-virtual {v0}, Lcom/dspread/xpos/b0;->f()Z

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/c0;->a:Lcom/xcheng/ledmanager/LedManager;

    invoke-virtual {v0}, Lcom/xcheng/ledmanager/LedManager;->isYellowLedShow()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
