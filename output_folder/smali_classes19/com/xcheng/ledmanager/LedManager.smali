.class public Lcom/xcheng/ledmanager/LedManager;
.super Ljava/lang/Object;
.source "LedManager.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xcheng/ledmanager/LedManager;->context:Landroid/content/Context;

    .line 3
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public isAllLedHide()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isAllLedHide()Z

    move-result v0

    return v0
.end method

.method public isAllLedShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isAllLedShow()Z

    move-result v0

    return v0
.end method

.method public isBlueLedShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isBlueLedShow()Z

    move-result v0

    return v0
.end method

.method public isGreenLedShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isGreenLedShow()Z

    move-result v0

    return v0
.end method

.method public isRedLedShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isRedLedShow()Z

    move-result v0

    return v0
.end method

.method public isYellowLedShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isYellowLedShow()Z

    move-result v0

    return v0
.end method

.method public playBeep(ZII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ActivityManager;->playBeep(ZII)V

    return-void
.end method

.method public showBlue(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->showBlue(Z)V

    return-void
.end method

.method public showGreen(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->showGreen(Z)V

    return-void
.end method

.method public showRed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->showRed(Z)V

    return-void
.end method

.method public showYellow(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xcheng/ledmanager/LedManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->showYellow(Z)V

    return-void
.end method
