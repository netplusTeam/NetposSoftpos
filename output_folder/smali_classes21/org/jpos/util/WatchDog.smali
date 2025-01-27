.class public Lorg/jpos/util/WatchDog;
.super Ljava/util/TimerTask;
.source "WatchDog.java"


# static fields
.field public static PURGE_INTERVAL:J

.field private static counter:Ljava/util/concurrent/atomic/AtomicLong;

.field private static timer:Ljava/util/Timer;


# instance fields
.field logName:Ljava/lang/String;

.field message:Ljava/lang/String;

.field realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lorg/jpos/util/WatchDog;->timer:Ljava/util/Timer;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/jpos/util/WatchDog;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lorg/jpos/util/WatchDog;->PURGE_INTERVAL:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .param p1, "duration"    # J

    .line 39
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 40
    sget-object v0, Lorg/jpos/util/WatchDog;->timer:Ljava/util/Timer;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 41
    sget-object v0, Lorg/jpos/util/WatchDog;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    sget-wide v2, Lorg/jpos/util/WatchDog;->PURGE_INTERVAL:J

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lorg/jpos/util/WatchDog;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "message"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/jpos/util/WatchDog;-><init>(J)V

    .line 46
    const-string v0, "Q2"

    iput-object v0, p0, Lorg/jpos/util/WatchDog;->logName:Ljava/lang/String;

    .line 47
    const-string v0, "watchdog"

    iput-object v0, p0, Lorg/jpos/util/WatchDog;->realm:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/jpos/util/WatchDog;->message:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/jpos/util/WatchDog;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/jpos/util/WatchDog;->logName:Ljava/lang/String;

    iget-object v1, p0, Lorg/jpos/util/WatchDog;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jpos/util/Log;->getLog(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/util/Log;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/util/WatchDog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setLogName(Ljava/lang/String;)V
    .locals 0
    .param p1, "logName"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/jpos/util/WatchDog;->logName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/jpos/util/WatchDog;->realm:Ljava/lang/String;

    .line 55
    return-void
.end method
