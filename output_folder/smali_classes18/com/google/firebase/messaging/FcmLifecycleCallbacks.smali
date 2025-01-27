.class Lcom/google/firebase/messaging/FcmLifecycleCallbacks;
.super Ljava/lang/Object;
.source "FcmLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final seenIntents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->seenIntents:Ljava/util/Set;

    .line 34
    return-void
.end method

.method private logNotificationOpen(Landroid/content/Intent;)V
    .locals 4
    .param p1, "startingIntent"    # Landroid/content/Intent;

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "analyticsData":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 83
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 84
    const-string v2, "gcm.n.analytics_data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 90
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "FirebaseMessaging"

    const-string v3, "Failed trying to get analytics data from Intent extras."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadScionMetrics(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationOpen(Landroid/os/Bundle;)V

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onActivityCreated$0$com-google-firebase-messaging-FcmLifecycleCallbacks(Landroid/content/Intent;)V
    .locals 0
    .param p1, "startingIntent"    # Landroid/content/Intent;

    .line 50
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->logNotificationOpen(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "createdActivity"    # Landroid/app/Activity;
    .param p2, "instanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, "startingIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->seenIntents:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_1

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/firebase/messaging/FcmLifecycleCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/FcmLifecycleCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/messaging/FcmLifecycleCallbacks;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->logNotificationOpen(Landroid/content/Intent;)V

    .line 54
    :goto_0
    return-void

    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "destroyedActivity"    # Landroid/app/Activity;

    .line 65
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "pausedActivity"    # Landroid/app/Activity;

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/firebase/messaging/FcmLifecycleCallbacks;->seenIntents:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 74
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 77
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 68
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 71
    return-void
.end method
