.class public final Lcom/woleapp/netpos/contactless/receivers/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/receivers/BatteryReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "batteryPercentage",
        "",
        "context",
        "Landroid/content/Context;",
        "onReceive",
        "",
        "batteryStatus",
        "Landroid/content/Intent;",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final batteryPercentage(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.BatteryManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStatus"    # Landroid/content/Intent;

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v0

    .line 18
    .local v0, "user":Lcom/woleapp/netpos/contactless/model/User;
    if-eqz v0, :cond_6

    move-object v1, v0

    .local v1, "it":Lcom/woleapp/netpos/contactless/model/User;
    const/4 v2, 0x0

    .line 19
    .local v2, "$i$a$-let-BatteryReceiver$onReceive$1":I
    new-instance v17, Lcom/woleapp/netpos/contactless/model/MqttEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7ff

    const/16 v16, 0x0

    move-object/from16 v3, v17

    invoke-direct/range {v3 .. v16}, Lcom/woleapp/netpos/contactless/model/MqttEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .local v3, "$this$onReceive_u24lambda_u2d2_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    const/4 v4, 0x0

    .line 20
    .local v4, "$i$a$-apply-BatteryReceiver$onReceive$1$event$1":I
    const-string v5, "SUCCESS"

    invoke-virtual {v3, v5}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setStatus(Ljava/lang/String;)V

    .line 21
    const-string v5, "00"

    invoke-virtual {v3, v5}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setCode(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setTimestamp(Ljava/lang/Long;)V

    .line 23
    sget-object v5, Lcom/woleapp/netpos/contactless/model/MqttEvents;->BATTERY_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttEvents;

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/MqttEvents;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setEvent(Ljava/lang/String;)V

    .line 24
    nop

    .line 19
    .end local v3    # "$this$onReceive_u24lambda_u2d2_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .end local v4    # "$i$a$-apply-BatteryReceiver$onReceive$1$event$1":I
    nop

    .line 25
    .local v3, "event":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "Power Connected"

    invoke-static {v5, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    new-instance v4, Lcom/woleapp/netpos/contactless/model/BatteryEvents;

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/receivers/BatteryReceiver;->batteryPercentage(Landroid/content/Context;)I

    move-result v5

    const-string v6, "Charging"

    invoke-direct {v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/BatteryEvents;-><init>(ILjava/lang/String;)V

    goto :goto_2

    .line 25
    :sswitch_1
    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 37
    :cond_2
    new-instance v4, Lcom/woleapp/netpos/contactless/model/BatteryEvents;

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/receivers/BatteryReceiver;->batteryPercentage(Landroid/content/Context;)I

    move-result v5

    const-string v6, "Battery Low"

    invoke-direct {v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/BatteryEvents;-><init>(ILjava/lang/String;)V

    goto :goto_2

    .line 25
    :sswitch_2
    const-string v6, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 32
    :cond_3
    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "Power disconnected"

    invoke-static {v5, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-instance v4, Lcom/woleapp/netpos/contactless/model/BatteryEvents;

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/receivers/BatteryReceiver;->batteryPercentage(Landroid/content/Context;)I

    move-result v5

    const-string v6, "Discharging"

    invoke-direct {v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/BatteryEvents;-><init>(ILjava/lang/String;)V

    goto :goto_2

    .line 25
    :sswitch_3
    const-string v6, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 40
    :cond_4
    new-instance v4, Lcom/woleapp/netpos/contactless/model/BatteryEvents;

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/receivers/BatteryReceiver;->batteryPercentage(Landroid/content/Context;)I

    move-result v5

    const-string v6, "Battery Okay"

    invoke-direct {v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/BatteryEvents;-><init>(ILjava/lang/String;)V

    goto :goto_2

    .line 43
    :cond_5
    :goto_1
    const/4 v3, 0x0

    .line 44
    move-object v5, v4

    check-cast v5, Lcom/woleapp/netpos/contactless/model/BatteryEvents;

    .line 25
    :goto_2
    nop

    .line 47
    .local v4, "batteryData":Lcom/woleapp/netpos/contactless/model/BatteryEvents;
    if-eqz v3, :cond_6

    move-object v11, v3

    .local v11, "$this$onReceive_u24lambda_u2d2_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    const/4 v12, 0x0

    .line 48
    .local v12, "$i$a$-apply-BatteryReceiver$onReceive$1$1":I
    invoke-virtual {v11, v4}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setData(Ljava/lang/Object;)V

    .line 49
    sget-object v5, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    sget-object v6, Lcom/woleapp/netpos/contactless/model/MqttTopics;->BATTERY_EVENTS:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v7, v11

    invoke-static/range {v5 .. v10}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->sendPayload$default(Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;ILjava/lang/Object;)V

    .line 50
    nop

    .line 47
    .end local v11    # "$this$onReceive_u24lambda_u2d2_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .end local v12    # "$i$a$-apply-BatteryReceiver$onReceive$1$1":I
    nop

    .line 18
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/model/User;
    .end local v2    # "$i$a$-let-BatteryReceiver$onReceive$1":I
    .end local v3    # "event":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .end local v4    # "batteryData":Lcom/woleapp/netpos/contactless/model/BatteryEvents;
    :cond_6
    nop

    .line 52
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7606c095 -> :sswitch_3
        -0x7073f927 -> :sswitch_2
        0x1d398bfd -> :sswitch_1
        0x3cbf870b -> :sswitch_0
    .end sparse-switch
.end method
