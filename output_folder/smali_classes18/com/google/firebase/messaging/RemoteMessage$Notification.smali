.class public Lcom/google/firebase/messaging/RemoteMessage$Notification;
.super Ljava/lang/Object;
.source "RemoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/RemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Notification"
.end annotation


# instance fields
.field private final body:Ljava/lang/String;

.field private final bodyLocArgs:[Ljava/lang/String;

.field private final bodyLocKey:Ljava/lang/String;

.field private final channelId:Ljava/lang/String;

.field private final clickAction:Ljava/lang/String;

.field private final color:Ljava/lang/String;

.field private final defaultLightSettings:Z

.field private final defaultSound:Z

.field private final defaultVibrateTimings:Z

.field private final eventTime:Ljava/lang/Long;

.field private final icon:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final lightSettings:[I

.field private final link:Landroid/net/Uri;

.field private final localOnly:Z

.field private final notificationCount:Ljava/lang/Integer;

.field private final notificationPriority:Ljava/lang/Integer;

.field private final sound:Ljava/lang/String;

.field private final sticky:Z

.field private final tag:Ljava/lang/String;

.field private final ticker:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final titleLocArgs:[Ljava/lang/String;

.field private final titleLocKey:Ljava/lang/String;

.field private final vibrateTimings:[J

.field private final visibility:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/google/firebase/messaging/NotificationParams;)V
    .locals 2
    .param p1, "params"    # Lcom/google/firebase/messaging/NotificationParams;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const-string v0, "gcm.n.title"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->title:Ljava/lang/String;

    .line 473
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getLocalizationResourceForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->titleLocKey:Ljava/lang/String;

    .line 474
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getLocalizationArgs(Lcom/google/firebase/messaging/NotificationParams;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->titleLocArgs:[Ljava/lang/String;

    .line 475
    const-string v0, "gcm.n.body"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->body:Ljava/lang/String;

    .line 476
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getLocalizationResourceForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->bodyLocKey:Ljava/lang/String;

    .line 477
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getLocalizationArgs(Lcom/google/firebase/messaging/NotificationParams;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->bodyLocArgs:[Ljava/lang/String;

    .line 478
    const-string v0, "gcm.n.icon"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->icon:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Lcom/google/firebase/messaging/NotificationParams;->getSoundResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->sound:Ljava/lang/String;

    .line 480
    const-string v0, "gcm.n.tag"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->tag:Ljava/lang/String;

    .line 481
    const-string v0, "gcm.n.color"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->color:Ljava/lang/String;

    .line 482
    const-string v0, "gcm.n.click_action"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->clickAction:Ljava/lang/String;

    .line 483
    const-string v0, "gcm.n.android_channel_id"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->channelId:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Lcom/google/firebase/messaging/NotificationParams;->getLink()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->link:Landroid/net/Uri;

    .line 485
    const-string v0, "gcm.n.image"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->imageUrl:Ljava/lang/String;

    .line 486
    const-string v0, "gcm.n.ticker"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->ticker:Ljava/lang/String;

    .line 487
    const-string v0, "gcm.n.notification_priority"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->notificationPriority:Ljava/lang/Integer;

    .line 488
    const-string v0, "gcm.n.visibility"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->visibility:Ljava/lang/Integer;

    .line 489
    const-string v0, "gcm.n.notification_count"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->notificationCount:Ljava/lang/Integer;

    .line 490
    const-string v0, "gcm.n.sticky"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->sticky:Z

    .line 491
    const-string v0, "gcm.n.local_only"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->localOnly:Z

    .line 492
    const-string v0, "gcm.n.default_sound"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->defaultSound:Z

    .line 493
    const-string v0, "gcm.n.default_vibrate_timings"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->defaultVibrateTimings:Z

    .line 494
    const-string v0, "gcm.n.default_light_settings"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->defaultLightSettings:Z

    .line 495
    const-string v0, "gcm.n.event_time"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/NotificationParams;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->eventTime:Ljava/lang/Long;

    .line 496
    invoke-virtual {p1}, Lcom/google/firebase/messaging/NotificationParams;->getLightSettings()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->lightSettings:[I

    .line 497
    invoke-virtual {p1}, Lcom/google/firebase/messaging/NotificationParams;->getVibrateTimings()[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->vibrateTimings:[J

    .line 498
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/messaging/NotificationParams;Lcom/google/firebase/messaging/RemoteMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/messaging/NotificationParams;
    .param p2, "x1"    # Lcom/google/firebase/messaging/RemoteMessage$1;

    .line 441
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;-><init>(Lcom/google/firebase/messaging/NotificationParams;)V

    return-void
.end method

.method private static getLocalizationArgs(Lcom/google/firebase/messaging/NotificationParams;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "params"    # Lcom/google/firebase/messaging/NotificationParams;
    .param p1, "key"    # Ljava/lang/String;

    .line 501
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/NotificationParams;->getLocalizationArgsForKey(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 502
    .local v0, "args":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 503
    const/4 v1, 0x0

    return-object v1

    .line 505
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 506
    .local v1, "stringArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 507
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyLocalizationArgs()[Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->bodyLocArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getBodyLocalizationKey()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->bodyLocKey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickAction()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->clickAction:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLightSettings()Z
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->defaultLightSettings:Z

    return v0
.end method

.method public getDefaultSound()Z
    .locals 1

    .line 679
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->defaultSound:Z

    return v0
.end method

.method public getDefaultVibrateSettings()Z
    .locals 1

    .line 692
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->defaultVibrateTimings:Z

    return v0
.end method

.method public getEventTime()Ljava/lang/Long;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->eventTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Landroid/net/Uri;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLightSettings()[I
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->lightSettings:[I

    return-object v0
.end method

.method public getLink()Landroid/net/Uri;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->link:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocalOnly()Z
    .locals 1

    .line 666
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->localOnly:Z

    return v0
.end method

.method public getNotificationCount()Ljava/lang/Integer;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->notificationCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotificationPriority()Ljava/lang/Integer;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->notificationPriority:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public getSticky()Z
    .locals 1

    .line 653
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->sticky:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTicker()Ljava/lang/String;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->ticker:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLocalizationArgs()[Ljava/lang/String;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->titleLocArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLocalizationKey()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->titleLocKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVibrateTimings()[J
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->vibrateTimings:[J

    return-object v0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$Notification;->visibility:Ljava/lang/Integer;

    return-object v0
.end method
