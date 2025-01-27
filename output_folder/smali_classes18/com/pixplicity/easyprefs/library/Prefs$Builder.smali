.class public final Lcom/pixplicity/easyprefs/library/Prefs$Builder;
.super Ljava/lang/Object;
.source "Prefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pixplicity/easyprefs/library/Prefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKey:Ljava/lang/String;

.field private mMode:I

.field private mUseDefault:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    const/4 v0, -0x1

    iput v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mMode:I

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mUseDefault:Z

    return-void
.end method


# virtual methods
.method public build()V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 541
    iget-object v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mKey:Ljava/lang/String;

    .line 545
    :cond_0
    iget-boolean v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mUseDefault:Z

    if-eqz v0, :cond_1

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mKey:Ljava/lang/String;

    .line 549
    :cond_1
    iget v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 550
    const/4 v0, 0x0

    iput v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mMode:I

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mMode:I

    invoke-static {v0, v1, v2}, Lcom/pixplicity/easyprefs/library/Prefs;->access$000(Landroid/content/Context;Ljava/lang/String;I)V

    .line 554
    return-void

    .line 538
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context not set, please set context before building the Prefs instance."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/pixplicity/easyprefs/library/Prefs$Builder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 493
    iput-object p1, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mContext:Landroid/content/Context;

    .line 494
    return-object p0
.end method

.method public setMode(I)Lcom/pixplicity/easyprefs/library/Prefs$Builder;
    .locals 2
    .param p1, "mode"    # I

    .line 507
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The mode in the SharedPreference can only be set too ContextWrapper.MODE_PRIVATE, ContextWrapper.MODE_WORLD_READABLE, ContextWrapper.MODE_WORLD_WRITEABLE or ContextWrapper.MODE_MULTI_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_1
    :goto_0
    iput p1, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mMode:I

    .line 513
    return-object p0
.end method

.method public setPrefsName(Ljava/lang/String;)Lcom/pixplicity/easyprefs/library/Prefs$Builder;
    .locals 0
    .param p1, "prefsName"    # Ljava/lang/String;

    .line 482
    iput-object p1, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mKey:Ljava/lang/String;

    .line 483
    return-object p0
.end method

.method public setUseDefaultSharedPreference(Z)Lcom/pixplicity/easyprefs/library/Prefs$Builder;
    .locals 0
    .param p1, "defaultSharedPreference"    # Z

    .line 527
    iput-boolean p1, p0, Lcom/pixplicity/easyprefs/library/Prefs$Builder;->mUseDefault:Z

    .line 528
    return-object p0
.end method
