.class public Lorg/jpos/util/DefaultTimer;
.super Ljava/lang/Object;
.source "DefaultTimer.java"


# static fields
.field private static volatile defaultTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lorg/jpos/util/DefaultTimer;->defaultTimer:Ljava/util/Timer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimer()Ljava/util/Timer;
    .locals 3

    .line 35
    sget-object v0, Lorg/jpos/util/DefaultTimer;->defaultTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lorg/jpos/util/DefaultTimer;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lorg/jpos/util/DefaultTimer;->defaultTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    sput-object v1, Lorg/jpos/util/DefaultTimer;->defaultTimer:Ljava/util/Timer;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lorg/jpos/util/DefaultTimer;->defaultTimer:Ljava/util/Timer;

    return-object v0
.end method
