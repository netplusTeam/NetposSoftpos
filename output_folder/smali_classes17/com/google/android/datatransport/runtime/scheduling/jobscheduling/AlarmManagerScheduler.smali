.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerScheduler.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;


# static fields
.field static final ATTEMPT_NUMBER:Ljava/lang/String; = "attemptNumber"

.field static final BACKEND_NAME:Ljava/lang/String; = "backendName"

.field static final EVENT_PRIORITY:Ljava/lang/String; = "priority"

.field static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final LOG_TAG:Ljava/lang/String; = "AlarmManagerScheduler"


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private final clock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

.field private final context:Landroid/content/Context;

.field private final eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Landroid/app/AlarmManager;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "eventStore"    # Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
    .param p3, "alarmManager"    # Landroid/app/AlarmManager;
    .param p4, "clock"    # Lcom/google/android/datatransport/runtime/time/Clock;
    .param p5, "config"    # Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 71
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->alarmManager:Landroid/app/AlarmManager;

    .line 72
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->clock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 73
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;)V
    .locals 7
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "eventStore"    # Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
    .param p3, "clock"    # Lcom/google/android/datatransport/runtime/time/Clock;
    .param p4, "config"    # Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 54
    nop

    .line 57
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    .line 54
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Landroid/app/AlarmManager;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;)V

    .line 60
    return-void
.end method


# virtual methods
.method isJobServiceOn(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 80
    const/high16 v0, 0x24000000

    goto :goto_0

    .line 81
    :cond_0
    const/high16 v0, 0x20000000

    :goto_0
    nop

    .line 83
    .local v0, "flags":I
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public schedule(Lcom/google/android/datatransport/runtime/TransportContext;I)V
    .locals 1
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "attemptNumber"    # I

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;IZ)V

    .line 89
    return-void
.end method

.method public schedule(Lcom/google/android/datatransport/runtime/TransportContext;IZ)V
    .locals 11
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "attemptNumber"    # I
    .param p3, "force"    # Z

    .line 99
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 100
    .local v0, "intentDataBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backendName"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 101
    nop

    .line 102
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 103
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 104
    nop

    .line 105
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v3, "extras"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 107
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->context:Landroid/content/Context;

    const-class v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    const-string v3, "attemptNumber"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v3, "AlarmManagerScheduler"

    if-nez p3, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->isJobServiceOn(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    const-string v2, "Upload for context %s is already scheduled. Returning..."

    invoke-static {v3, v2, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    return-void

    .line 117
    :cond_1
    iget-object v4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v4, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->getNextCallTime(Lcom/google/android/datatransport/runtime/TransportContext;)J

    move-result-wide v4

    .line 119
    .local v4, "backendTime":J
    iget-object v6, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 120
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v7

    invoke-virtual {v6, v7, v4, v5, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;->getScheduleDelay(Lcom/google/android/datatransport/Priority;JI)J

    move-result-wide v6

    .line 122
    .local v6, "scheduleDelay":J
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v2

    const/4 v9, 0x1

    .line 126
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 128
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    .line 122
    const-string v9, "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d"

    invoke-static {v3, v9, v8}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->context:Landroid/content/Context;

    .line 135
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_2

    const/high16 v8, 0x4000000

    goto :goto_0

    :cond_2
    move v8, v2

    .line 131
    :goto_0
    invoke-static {v3, v2, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 136
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->alarmManager:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerScheduler;->clock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 137
    invoke-interface {v8}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 136
    invoke-virtual {v3, v10, v8, v9, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 138
    return-void
.end method
