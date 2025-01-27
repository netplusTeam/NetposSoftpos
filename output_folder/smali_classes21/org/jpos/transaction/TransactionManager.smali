.class public Lorg/jpos/transaction/TransactionManager;
.super Lorg/jpos/q2/QBeanSupport;
.source "TransactionManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/jpos/transaction/TransactionConstants;
.implements Lorg/jpos/transaction/TransactionManagerMBean;
.implements Lorg/jpos/util/Loggeable;
.implements Lorg/jpos/util/MetricsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;,
        Lorg/jpos/transaction/TransactionManager$RetryTask;,
        Lorg/jpos/transaction/TransactionManager$PausedMonitor;
    }
.end annotation


# static fields
.field public static final COMMITTING:Ljava/lang/Integer;

.field public static final CONTEXT:Ljava/lang/String; = "$CONTEXT."

.field public static final DEFAULT_GROUP:Ljava/lang/String; = ""

.field public static final DONE:Ljava/lang/Integer;

.field public static final GROUPS:Ljava/lang/String; = "$GROUPS."

.field public static final HEAD:Ljava/lang/String; = "$HEAD"

.field public static final MAX_PARTICIPANTS:J = 0x3e8L

.field public static final MAX_WAIT:J = 0x3a98L

.field public static final PREPARING:Ljava/lang/Integer;

.field public static final RETRY_QUEUE:Ljava/lang/String; = "$RETRY_QUEUE"

.field public static final STATE:Ljava/lang/String; = "$STATE."

.field public static final TAIL:Ljava/lang/String; = "$TAIL"

.field public static final TAILLOCK:Ljava/lang/String; = "$TAILLOCK"

.field public static final TIMER_PURGE_INTERVAL:J = 0x3e8L

.field private static loadMonitorExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final tlContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private static final tlId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field abortOnPauseTimeout:Z

.field private activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

.field private activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

.field callSelectorOnAbort:Z

.field debug:Z

.field debugContext:Z

.field private destroyables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jpos/util/Destroyable;",
            ">;"
        }
    .end annotation
.end field

.field doRecover:Z

.field protected groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;>;"
        }
    .end annotation
.end field

.field hasStatusListeners:Z

.field volatile head:J

.field iisp:Lorg/jpos/space/Space;

.field isp:Lorg/jpos/space/Space;

.field maxActiveSessions:I

.field maxSessions:I

.field private metrics:Lorg/jpos/util/Metrics;

.field pauseTimeout:J

.field private pausedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field profiler:Z

.field psp:Lorg/jpos/space/Space;

.field queue:Ljava/lang/String;

.field retryInterval:J

.field retryTask:Ljava/lang/Runnable;

.field retryTimeout:J

.field sessions:I

.field sp:Lorg/jpos/space/Space;

.field final statusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field volatile tail:J

.field tailLock:Ljava/lang/String;

.field threads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field threshold:I

.field final timer:Ljava/util/Timer;

.field tps:Lorg/jpos/util/TPS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/jpos/transaction/TransactionManager;->PREPARING:Ljava/lang/Integer;

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/jpos/transaction/TransactionManager;->COMMITTING:Ljava/lang/Integer;

    .line 57
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/jpos/transaction/TransactionManager;->DONE:Ljava/lang/Integer;

    .line 64
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jpos/transaction/TransactionManager;->tlContext:Ljava/lang/ThreadLocal;

    .line 65
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jpos/transaction/TransactionManager;->tlId:Ljava/lang/ThreadLocal;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/transaction/TransactionManager;->names:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->destroyables:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->statusListeners:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->pausedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->retryInterval:J

    .line 95
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->retryTimeout:J

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->pauseTimeout:J

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->abortOnPauseTimeout:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->retryTask:Ljava/lang/Runnable;

    .line 100
    invoke-static {}, Lorg/jpos/util/DefaultTimer;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->timer:Ljava/util/Timer;

    return-void
.end method

.method public static getContext()Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">()TT;"
        }
    .end annotation

    .line 1121
    sget-object v0, Lorg/jpos/transaction/TransactionManager;->tlContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public static getId()Ljava/lang/Long;
    .locals 1

    .line 1124
    sget-object v0, Lorg/jpos/transaction/TransactionManager;->tlId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method private getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Lorg/jpos/transaction/TransactionParticipant;

    .line 1153
    sget-object v0, Lorg/jpos/transaction/TransactionManager;->names:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getSerializable()Ljava/io/Serializable;
    .locals 1

    .line 1118
    sget-object v0, Lorg/jpos/transaction/TransactionManager;->tlContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method private notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V
    .locals 8
    .param p1, "session"    # I
    .param p2, "state"    # Lorg/jpos/transaction/TransactionStatusEvent$State;
    .param p3, "id"    # J
    .param p5, "info"    # Ljava/lang/String;
    .param p6, "context"    # Ljava/io/Serializable;

    .line 1129
    new-instance v7, Lorg/jpos/transaction/TransactionStatusEvent;

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/jpos/transaction/TransactionStatusEvent;-><init>(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    .line 1130
    .local v0, "e":Lorg/jpos/transaction/TransactionStatusEvent;
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->statusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1131
    :try_start_0
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->statusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/transaction/TransactionStatusListener;

    .line 1132
    .local v3, "l":Lorg/jpos/transaction/TransactionStatusListener;
    invoke-interface {v3, v0}, Lorg/jpos/transaction/TransactionStatusListener;->update(Lorg/jpos/transaction/TransactionStatusEvent;)V

    .line 1133
    .end local v3    # "l":Lorg/jpos/transaction/TransactionStatusListener;
    goto :goto_0

    .line 1134
    :cond_0
    monitor-exit v1

    .line 1135
    return-void

    .line 1134
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeThreadLocal()V
    .locals 1

    .line 1147
    sget-object v0, Lorg/jpos/transaction/TransactionManager;->tlId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 1148
    sget-object v0, Lorg/jpos/transaction/TransactionManager;->tlContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 1149
    return-void
.end method

.method private setThreadLocal(JLjava/io/Serializable;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 1143
    sget-object v0, Lorg/jpos/transaction/TransactionManager;->tlId:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1144
    sget-object v0, Lorg/jpos/transaction/TransactionManager;->tlContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1145
    return-void
.end method

.method private setThreadName(JLjava/lang/String;Lorg/jpos/transaction/TransactionParticipant;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "p"    # Lorg/jpos/transaction/TransactionParticipant;

    .line 1137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 1138
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 1139
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 1138
    const-string v2, "%s:%d %s %s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method private tmInfo()Ljava/lang/String;
    .locals 3

    .line 1157
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 1158
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getActiveTransactions()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->pausedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getOutstandingTransactions()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1159
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getActiveSessions()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lorg/jpos/transaction/TransactionManager;->maxSessions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    .line 1160
    invoke-virtual {v2}, Lorg/jpos/util/TPS;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1157
    const-string v1, "in-transit=%d/%d, head=%d, tail=%d, paused=%d, outstanding=%d, active-sessions=%d/%d%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abort(IJLjava/io/Serializable;Ljava/util/List;ZLorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)V
    .locals 15
    .param p1, "session"    # I
    .param p2, "id"    # J
    .param p4, "context"    # Ljava/io/Serializable;
    .param p6, "recover"    # Z
    .param p7, "evt"    # Lorg/jpos/util/LogEvent;
    .param p8, "prof"    # Lorg/jpos/util/Profiler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/io/Serializable;",
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;Z",
            "Lorg/jpos/util/LogEvent;",
            "Lorg/jpos/util/Profiler;",
            ")V"
        }
    .end annotation

    .line 537
    .local p5, "members":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    move-object v7, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v0, p4

    .end local p4    # "context":Ljava/io/Serializable;
    .local v0, "context":Ljava/io/Serializable;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/jpos/transaction/TransactionParticipant;

    .line 538
    .local v13, "p":Lorg/jpos/transaction/TransactionParticipant;
    if-eqz p6, :cond_0

    instance-of v1, v13, Lorg/jpos/transaction/ContextRecovery;

    if-eqz v1, :cond_0

    .line 539
    move-object v1, v13

    check-cast v1, Lorg/jpos/transaction/ContextRecovery;

    const/4 v2, 0x0

    invoke-interface {v1, v8, v9, v0, v2}, Lorg/jpos/transaction/ContextRecovery;->recover(JLjava/io/Serializable;Z)Ljava/io/Serializable;

    move-result-object v0

    .line 540
    if-eqz v10, :cond_0

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  abort-recover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v13}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 543
    :cond_0
    move-object v14, v0

    .end local v0    # "context":Ljava/io/Serializable;
    .local v14, "context":Ljava/io/Serializable;
    iget-boolean v0, v7, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_1

    .line 544
    sget-object v2, Lorg/jpos/transaction/TransactionStatusEvent$State;->ABORTING:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 545
    invoke-direct {p0, v13}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v5

    .line 544
    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v3, p2

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    .line 548
    :cond_1
    invoke-virtual {p0, v13, v8, v9, v14}, Lorg/jpos/transaction/TransactionManager;->abort(Lorg/jpos/transaction/TransactionParticipant;JLjava/io/Serializable;)V

    .line 549
    if-eqz v10, :cond_2

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "          abort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v13}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 551
    if-eqz v11, :cond_2

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  abort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v13}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/jpos/util/Profiler;->checkPoint(Ljava/lang/String;)V

    .line 554
    .end local v13    # "p":Lorg/jpos/transaction/TransactionParticipant;
    :cond_2
    move-object v0, v14

    goto/16 :goto_0

    .line 555
    .end local v14    # "context":Ljava/io/Serializable;
    .restart local v0    # "context":Ljava/io/Serializable;
    :cond_3
    return-void
.end method

.method protected abort(Lorg/jpos/transaction/TransactionParticipant;JLjava/io/Serializable;)V
    .locals 5
    .param p1, "p"    # Lorg/jpos/transaction/TransactionParticipant;
    .param p2, "id"    # J
    .param p4, "context"    # Ljava/io/Serializable;

    .line 604
    new-instance v0, Lorg/jpos/util/Chronometer;

    invoke-direct {v0}, Lorg/jpos/util/Chronometer;-><init>()V

    .line 606
    .local v0, "c":Lorg/jpos/util/Chronometer;
    :try_start_0
    const-string v1, "abort"

    invoke-direct {p0, p2, p3, v1, p1}, Lorg/jpos/transaction/TransactionManager;->setThreadName(JLjava/lang/String;Lorg/jpos/transaction/TransactionParticipant;)V

    .line 607
    invoke-interface {p1, p2, p3, p4}, Lorg/jpos/transaction/TransactionParticipant;->abort(JLjava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    goto :goto_0

    .line 608
    :catchall_0
    move-exception v1

    .line 609
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ABORT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 611
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v1, :cond_0

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-abort"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 613
    :cond_0
    return-void
.end method

.method protected addGroup(JLjava/lang/String;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "groupName"    # Ljava/lang/String;

    .line 924
    if-eqz p3, :cond_0

    .line 925
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    const-string v1, "$GROUPS."

    invoke-virtual {p0, v1, p1, p2}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 926
    :cond_0
    return-void
.end method

.method public addListener(Lorg/jpos/transaction/TransactionStatusListener;)V
    .locals 2
    .param p1, "l"    # Lorg/jpos/transaction/TransactionStatusListener;

    .line 455
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->statusListeners:Ljava/util/List;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->statusListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    .line 458
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected declared-synchronized checkRetryTask()V
    .locals 2

    monitor-enter p0

    .line 984
    :try_start_0
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->retryTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 985
    new-instance v0, Lorg/jpos/transaction/TransactionManager$RetryTask;

    invoke-direct {v0, p0}, Lorg/jpos/transaction/TransactionManager$RetryTask;-><init>(Lorg/jpos/transaction/TransactionManager;)V

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->retryTask:Ljava/lang/Runnable;

    .line 986
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->retryTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    .end local p0    # "this":Lorg/jpos/transaction/TransactionManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 983
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected checkTail()V
    .locals 5

    .line 866
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->sp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->tailLock:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 867
    .local v0, "lock":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->tailDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    iget-wide v1, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->syncTail()V

    .line 874
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->sp:Lorg/jpos/space/Space;

    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->tailLock:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 875
    return-void
.end method

.method protected commit(IJLjava/io/Serializable;Ljava/util/List;ZLorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)V
    .locals 15
    .param p1, "session"    # I
    .param p2, "id"    # J
    .param p4, "context"    # Ljava/io/Serializable;
    .param p6, "recover"    # Z
    .param p7, "evt"    # Lorg/jpos/util/LogEvent;
    .param p8, "prof"    # Lorg/jpos/util/Profiler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/io/Serializable;",
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;Z",
            "Lorg/jpos/util/LogEvent;",
            "Lorg/jpos/util/Profiler;",
            ")V"
        }
    .end annotation

    .line 516
    .local p5, "members":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    move-object v7, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v0, p4

    .end local p4    # "context":Ljava/io/Serializable;
    .local v0, "context":Ljava/io/Serializable;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/jpos/transaction/TransactionParticipant;

    .line 517
    .local v13, "p":Lorg/jpos/transaction/TransactionParticipant;
    if-eqz p6, :cond_0

    instance-of v1, v13, Lorg/jpos/transaction/ContextRecovery;

    if-eqz v1, :cond_0

    .line 518
    move-object v1, v13

    check-cast v1, Lorg/jpos/transaction/ContextRecovery;

    const/4 v2, 0x1

    invoke-interface {v1, v8, v9, v0, v2}, Lorg/jpos/transaction/ContextRecovery;->recover(JLjava/io/Serializable;Z)Ljava/io/Serializable;

    move-result-object v0

    .line 519
    if-eqz v10, :cond_0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " commit-recover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v13}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 522
    :cond_0
    move-object v14, v0

    .end local v0    # "context":Ljava/io/Serializable;
    .local v14, "context":Ljava/io/Serializable;
    iget-boolean v0, v7, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_1

    .line 523
    sget-object v2, Lorg/jpos/transaction/TransactionStatusEvent$State;->COMMITING:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 524
    invoke-direct {p0, v13}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v5

    .line 523
    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v3, p2

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    .line 526
    :cond_1
    invoke-virtual {p0, v13, v8, v9, v14}, Lorg/jpos/transaction/TransactionManager;->commit(Lorg/jpos/transaction/TransactionParticipant;JLjava/io/Serializable;)V

    .line 527
    if-eqz v10, :cond_2

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "         commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v13}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 529
    if-eqz v11, :cond_2

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v13}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/jpos/util/Profiler;->checkPoint(Ljava/lang/String;)V

    .line 532
    .end local v13    # "p":Lorg/jpos/transaction/TransactionParticipant;
    :cond_2
    move-object v0, v14

    goto/16 :goto_0

    .line 533
    .end local v14    # "context":Ljava/io/Serializable;
    .restart local v0    # "context":Ljava/io/Serializable;
    :cond_3
    return-void
.end method

.method protected commit(Lorg/jpos/transaction/TransactionParticipant;JLjava/io/Serializable;)V
    .locals 5
    .param p1, "p"    # Lorg/jpos/transaction/TransactionParticipant;
    .param p2, "id"    # J
    .param p4, "context"    # Ljava/io/Serializable;

    .line 591
    new-instance v0, Lorg/jpos/util/Chronometer;

    invoke-direct {v0}, Lorg/jpos/util/Chronometer;-><init>()V

    .line 593
    .local v0, "c":Lorg/jpos/util/Chronometer;
    :try_start_0
    const-string v1, "commit"

    invoke-direct {p0, p2, p3, v1, p1}, Lorg/jpos/transaction/TransactionManager;->setThreadName(JLjava/lang/String;Lorg/jpos/transaction/TransactionParticipant;)V

    .line 594
    invoke-interface {p1, p2, p3, p4}, Lorg/jpos/transaction/TransactionParticipant;->commit(JLjava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    goto :goto_0

    .line 595
    :catchall_0
    move-exception v1

    .line 596
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COMMIT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v1, :cond_0

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-commit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 600
    :cond_0
    return-void
.end method

.method protected commitOff(Lorg/jpos/space/Space;)V
    .locals 2
    .param p1, "sp"    # Lorg/jpos/space/Space;

    .line 842
    instance-of v0, p1, Lorg/jpos/space/JDBMSpace;

    if-eqz v0, :cond_0

    .line 843
    move-object v0, p1

    check-cast v0, Lorg/jpos/space/JDBMSpace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jpos/space/JDBMSpace;->setAutoCommit(Z)V

    .line 845
    :cond_0
    return-void
.end method

.method protected commitOn(Lorg/jpos/space/Space;)V
    .locals 2
    .param p1, "sp"    # Lorg/jpos/space/Space;

    .line 847
    instance-of v0, p1, Lorg/jpos/space/JDBMSpace;

    if-eqz v0, :cond_0

    .line 848
    move-object v0, p1

    check-cast v0, Lorg/jpos/space/JDBMSpace;

    .line 849
    .local v0, "jsp":Lorg/jpos/space/JDBMSpace;
    invoke-virtual {v0}, Lorg/jpos/space/JDBMSpace;->commit()V

    .line 850
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jpos/space/JDBMSpace;->setAutoCommit(Z)V

    .line 852
    .end local v0    # "jsp":Lorg/jpos/space/JDBMSpace;
    :cond_0
    return-void
.end method

.method public createParticipant(Lorg/jdom2/Element;)Lorg/jpos/transaction/TransactionParticipant;
    .locals 6
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 801
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    .line 802
    .local v0, "factory":Lorg/jpos/q2/QFactory;
    nop

    .line 803
    const-string v1, "class"

    invoke-static {p1, v1}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/transaction/TransactionParticipant;

    .line 805
    .local v1, "participant":Lorg/jpos/transaction/TransactionParticipant;
    invoke-virtual {v0, v1, p1}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 806
    const-class v2, Lorg/jpos/transaction/TransactionManager;

    const-string v3, "setTransactionManager"

    invoke-static {v1, v3, p0, v2}, Lorg/jpos/q2/QFactory;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 807
    invoke-virtual {v0, v1, p1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 808
    const-string v2, "realm"

    invoke-static {p1, v2}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, "realm":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 812
    :cond_0
    const-string v2, ""

    .line 813
    :goto_0
    sget-object v3, Lorg/jpos/transaction/TransactionManager;->names:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jpos/util/Caller;->shortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    instance-of v3, v1, Lorg/jpos/util/Destroyable;

    if-eqz v3, :cond_1

    .line 815
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->destroyables:Ljava/util/Set;

    move-object v4, v1

    check-cast v4, Lorg/jpos/util/Destroyable;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_1
    return-object v1
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "ps"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 507
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0}, Lorg/jpos/transaction/TransactionManager;->tmInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s%s%n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 508
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0, p1, p2}, Lorg/jpos/util/Metrics;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 511
    :cond_0
    return-void
.end method

.method protected freeze(Ljava/io/Serializable;Lorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)Lorg/jpos/util/FrozenLogEvent;
    .locals 1
    .param p1, "context"    # Ljava/io/Serializable;
    .param p2, "evt"    # Lorg/jpos/util/LogEvent;
    .param p3, "prof"    # Lorg/jpos/util/Profiler;

    .line 1001
    new-instance v0, Lorg/jpos/util/FrozenLogEvent;

    invoke-direct {v0, p2}, Lorg/jpos/util/FrozenLogEvent;-><init>(Lorg/jpos/util/LogEvent;)V

    return-object v0
.end method

.method public getActiveSessions()I
    .locals 1

    .line 1106
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getActiveTransactions()I
    .locals 1

    .line 1112
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getDebug()Z
    .locals 1

    .line 1079
    iget-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->debug:Z

    return v0
.end method

.method public getDebugContext()Z
    .locals 1

    .line 1069
    iget-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->debugContext:Z

    return v0
.end method

.method public getHead()J
    .locals 2

    .line 416
    iget-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    return-wide v0
.end method

.method public getInTransit()J
    .locals 4

    .line 420
    iget-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    iget-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getInputSpace()Lorg/jpos/space/Space;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->isp:Lorg/jpos/space/Space;

    return-object v0
.end method

.method protected getKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "id"    # J

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMaxSessions()I
    .locals 1

    .line 1115
    iget v0, p0, Lorg/jpos/transaction/TransactionManager;->maxSessions:I

    return v0
.end method

.method public getMetrics()Lorg/jpos/util/Metrics;
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    return-object v0
.end method

.method public getOutstandingTransactions()I
    .locals 2

    .line 822
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    instance-of v1, v0, Lorg/jpos/space/LocalSpace;

    if-eqz v1, :cond_0

    .line 823
    check-cast v0, Lorg/jpos/space/LocalSpace;

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jpos/space/LocalSpace;->size(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 824
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getParticipants(J)Ljava/util/List;
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;"
        }
    .end annotation

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v0, "participantsChain":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/jpos/transaction/TransactionManager;->getParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 748
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 749
    const-string v2, "$GROUPS."

    invoke-virtual {p0, v2, p1, p2}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, "key":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v3, v2}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    .local v4, "grp":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 753
    invoke-virtual {p0, v4}, Lorg/jpos/transaction/TransactionManager;->getParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 755
    :cond_0
    return-object v0
.end method

.method protected getParticipants(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->groups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 737
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    if-nez v0, :cond_0

    .line 738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 740
    :cond_0
    return-object v0
.end method

.method public getPausedCounter()I
    .locals 1

    .line 1109
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->pausedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getPersistentSpace()Lorg/jpos/space/Space;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    return-object v0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    return-object v0
.end method

.method protected getSessionsToStandUp()I
    .locals 5

    .line 1087
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getOutstandingTransactions()I

    move-result v0

    .line 1088
    .local v0, "outstandingTransactions":I
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getActiveSessions()I

    move-result v1

    .line 1089
    .local v1, "activeSessions":I
    const/4 v2, 0x0

    .line 1090
    .local v2, "count":I
    iget v3, p0, Lorg/jpos/transaction/TransactionManager;->maxSessions:I

    if-ge v1, v3, :cond_0

    iget v4, p0, Lorg/jpos/transaction/TransactionManager;->threshold:I

    if-le v0, v4, :cond_0

    .line 1091
    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1093
    :cond_0
    return v2
.end method

.method public getSpace()Lorg/jpos/space/Space;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->sp:Lorg/jpos/space/Space;

    return-object v0
.end method

.method public getTPS()Lorg/jpos/util/TPS;
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    return-object v0
.end method

.method public getTPSAsString()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    invoke-virtual {v0}, Lorg/jpos/util/TPS;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTPSAvg()F
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    invoke-virtual {v0}, Lorg/jpos/util/TPS;->getAvg()F

    move-result v0

    return v0
.end method

.method public getTPSElapsed()J
    .locals 2

    .line 492
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    invoke-virtual {v0}, Lorg/jpos/util/TPS;->getElapsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTPSPeak()I
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    invoke-virtual {v0}, Lorg/jpos/util/TPS;->getPeak()I

    move-result v0

    return v0
.end method

.method public getTPSPeakWhen()Ljava/util/Date;
    .locals 3

    .line 487
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    invoke-virtual {v1}, Lorg/jpos/util/TPS;->getPeakWhen()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTail()J
    .locals 2

    .line 411
    iget-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    return-wide v0
.end method

.method protected initCounter(Ljava/lang/String;J)J
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 834
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 835
    .local v0, "L":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 836
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 837
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v1, p1, v0}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 839
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method protected initGroup(Lorg/jdom2/Element;)Ljava/util/List;
    .locals 6
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            ")",
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v0, "group":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    const-string v1, "participant"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 790
    .local v2, "el":Lorg/jdom2/Element;
    invoke-static {v2}, Lorg/jpos/q2/QFactory;->isEnabled(Lorg/jdom2/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    invoke-virtual {p0, v2}, Lorg/jpos/transaction/TransactionManager;->createParticipant(Lorg/jdom2/Element;)Lorg/jpos/transaction/TransactionParticipant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 793
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "participant ignored (enabled=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lorg/jpos/q2/QFactory;->getEnabledAttribute(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "class"

    invoke-virtual {v2, v5}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "realm"

    invoke-virtual {v2, v5}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 795
    .end local v2    # "el":Lorg/jdom2/Element;
    :goto_1
    goto :goto_0

    .line 796
    :cond_1
    return-object v0
.end method

.method protected initParticipants(Lorg/jdom2/Element;)V
    .locals 5
    .param p1, "config"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->groups:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/jpos/transaction/TransactionManager;->initGroup(Lorg/jdom2/Element;)Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v0, "group"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 774
    .local v1, "e":Lorg/jdom2/Element;
    const-string v2, "name"

    invoke-static {v1, v2}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 777
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->groups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 782
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->groups:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lorg/jpos/transaction/TransactionManager;->initGroup(Lorg/jdom2/Element;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .end local v1    # "e":Lorg/jdom2/Element;
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 778
    .restart local v1    # "e":Lorg/jdom2/Element;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' already defined"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_1
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v3, "missing group name"

    invoke-direct {v0, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    .end local v1    # "e":Lorg/jdom2/Element;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public initService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->cfg:Lorg/jpos/core/Configuration;

    const-string v1, "queue"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    .line 105
    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->cfg:Lorg/jpos/core/Configuration;

    const-string v1, "space"

    invoke-interface {v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->sp:Lorg/jpos/space/Space;

    .line 108
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->cfg:Lorg/jpos/core/Configuration;

    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->cfg:Lorg/jpos/core/Configuration;

    invoke-interface {v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "input-space"

    invoke-interface {v0, v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->isp:Lorg/jpos/space/Space;

    .line 109
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->sp:Lorg/jpos/space/Space;

    if-ne v0, v1, :cond_0

    .line 110
    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    goto :goto_0

    .line 112
    :cond_0
    iput-object v1, p0, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    .line 114
    :goto_0
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->cfg:Lorg/jpos/core/Configuration;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "persistent-space"

    invoke-interface {v0, v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    .line 115
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->cfg:Lorg/jpos/core/Configuration;

    const-wide/16 v1, 0x1

    const-string v3, "initial-tail"

    invoke-interface {v0, v3, v1, v2}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "$TAIL"

    invoke-virtual {p0, v2, v0, v1}, Lorg/jpos/transaction/TransactionManager;->initCounter(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    .line 116
    iget-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    const-string v2, "$HEAD"

    invoke-virtual {p0, v2, v0, v1}, Lorg/jpos/transaction/TransactionManager;->initCounter(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    .line 117
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->initTailLock()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->groups:Ljava/util/Map;

    .line 120
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/transaction/TransactionManager;->initParticipants(Lorg/jdom2/Element;)V

    .line 121
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/transaction/TransactionManager;->initStatusListeners(Lorg/jdom2/Element;)V

    .line 122
    return-void

    .line 106
    :cond_1
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "queue property not specified"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initStatusListeners(Lorg/jdom2/Element;)V
    .locals 4
    .param p1, "config"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 759
    const-string v0, "status-listener"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 760
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 762
    .local v1, "e":Lorg/jdom2/Element;
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v2

    .line 763
    .local v2, "factory":Lorg/jpos/q2/QFactory;
    const-string v3, "class"

    invoke-static {v1, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/transaction/TransactionStatusListener;

    .line 764
    .local v3, "listener":Lorg/jpos/transaction/TransactionStatusListener;
    invoke-virtual {v2, v3, p1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 765
    invoke-virtual {p0, v3}, Lorg/jpos/transaction/TransactionManager;->addListener(Lorg/jpos/transaction/TransactionStatusListener;)V

    .line 766
    .end local v1    # "e":Lorg/jdom2/Element;
    .end local v2    # "factory":Lorg/jpos/q2/QFactory;
    .end local v3    # "listener":Lorg/jpos/transaction/TransactionStatusListener;
    goto :goto_0

    .line 767
    :cond_0
    return-void
.end method

.method protected initTailLock()V
    .locals 3

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$TAILLOCK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->tailLock:Ljava/lang/String;

    .line 863
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->sp:Lorg/jpos/space/Space;

    const-string v2, "$TAILLOCK"

    invoke-interface {v1, v0, v2}, Lorg/jpos/space/Space;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 864
    return-void
.end method

.method protected isSessionToStandDown()Z
    .locals 1

    .line 1101
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$startService$0$org-jpos-transaction-TransactionManager()V
    .locals 4

    .line 142
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getSessionsToStandUp()I

    move-result v0

    .line 143
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 145
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " additional sessions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 148
    :cond_1
    return-void
.end method

.method protected nextId()J
    .locals 9

    .line 886
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    monitor-enter v0

    .line 887
    :try_start_0
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-virtual {p0, v1}, Lorg/jpos/transaction/TransactionManager;->commitOff(Lorg/jpos/space/Space;)V

    .line 888
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    const-string v2, "$HEAD"

    invoke-interface {v1, v2}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iget-wide v1, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    .line 890
    .local v1, "h":J
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    const-string v4, "$HEAD"

    iget-wide v5, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 891
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-virtual {p0, v3}, Lorg/jpos/transaction/TransactionManager;->commitOn(Lorg/jpos/space/Space;)V

    .line 892
    monitor-exit v0

    .line 893
    return-wide v1

    .line 892
    .end local v1    # "h":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected prepare(IJLjava/io/Serializable;Ljava/util/List;Ljava/util/Iterator;ZLorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)I
    .locals 25
    .param p1, "session"    # I
    .param p2, "id"    # J
    .param p4, "context"    # Ljava/io/Serializable;
    .param p7, "abort"    # Z
    .param p8, "evt"    # Lorg/jpos/util/LogEvent;
    .param p9, "prof"    # Lorg/jpos/util/Profiler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/io/Serializable;",
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;",
            "Ljava/util/Iterator<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;Z",
            "Lorg/jpos/util/LogEvent;",
            "Lorg/jpos/util/Profiler;",
            ")I"
        }
    .end annotation

    .line 617
    .local p5, "members":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    .local p6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    move-object/from16 v12, p0

    move-wide/from16 v13, p2

    move-object/from16 v15, p4

    move-object/from16 v11, p8

    move-object/from16 v10, p9

    const/4 v0, 0x0

    .line 618
    .local v0, "retry":Z
    const/4 v1, 0x0

    .line 619
    .local v1, "pause":Z
    const/4 v2, 0x0

    move-object/from16 v16, p6

    move v8, v0

    move v9, v1

    move v7, v2

    move/from16 v0, p7

    .end local v1    # "pause":Z
    .end local p6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    .end local p7    # "abort":Z
    .local v0, "abort":Z
    .local v7, "i":I
    .local v8, "retry":Z
    .local v9, "pause":Z
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v6, 0x2

    const/16 v17, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1f

    .line 621
    int-to-long v1, v7

    const-wide/16 v18, 0x3e8

    cmp-long v1, v1, v18

    if-lez v1, :cond_0

    .line 622
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loop detected - transaction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aborted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 625
    return v17

    .line 627
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/jpos/transaction/TransactionParticipant;

    .line 628
    .local v5, "p":Lorg/jpos/transaction/TransactionParticipant;
    const/4 v3, 0x4

    if-eqz v0, :cond_3

    .line 629
    iget-boolean v1, v12, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v1, :cond_1

    .line 630
    sget-object v6, Lorg/jpos/transaction/TransactionStatusEvent$State;->PREPARING_FOR_ABORT:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 631
    invoke-direct {v12, v5}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v17

    .line 630
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 p6, v9

    move v9, v3

    .end local v9    # "pause":Z
    .local p6, "pause":Z
    move-object v3, v6

    move v6, v4

    move-object v9, v5

    .end local v5    # "p":Lorg/jpos/transaction/TransactionParticipant;
    .local v9, "p":Lorg/jpos/transaction/TransactionParticipant;
    move-wide/from16 v4, p2

    move/from16 p7, v8

    move v8, v6

    .end local v8    # "retry":Z
    .local p7, "retry":Z
    move-object/from16 v6, v17

    move/from16 v19, v7

    .end local v7    # "i":I
    .local v19, "i":I
    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    .line 629
    .end local v19    # "i":I
    .end local p6    # "pause":Z
    .end local p7    # "retry":Z
    .restart local v5    # "p":Lorg/jpos/transaction/TransactionParticipant;
    .restart local v7    # "i":I
    .restart local v8    # "retry":Z
    .local v9, "pause":Z
    :cond_1
    move/from16 v19, v7

    move/from16 p7, v8

    move/from16 p6, v9

    move v8, v4

    move-object v9, v5

    .line 633
    .end local v5    # "p":Lorg/jpos/transaction/TransactionParticipant;
    .end local v7    # "i":I
    .end local v8    # "retry":Z
    .local v9, "p":Lorg/jpos/transaction/TransactionParticipant;
    .restart local v19    # "i":I
    .restart local p6    # "pause":Z
    .restart local p7    # "retry":Z
    :goto_1
    invoke-virtual {v12, v9, v13, v14, v15}, Lorg/jpos/transaction/TransactionManager;->prepareForAbort(Lorg/jpos/transaction/TransactionParticipant;JLjava/io/Serializable;)I

    move-result v1

    .line 635
    .local v1, "action":I
    if-eqz v11, :cond_2

    instance-of v2, v9, Lorg/jpos/transaction/AbortParticipant;

    if-eqz v2, :cond_2

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareForAbort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v12, v9}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 637
    if-eqz v10, :cond_2

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareForAbort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v12, v9}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/jpos/util/Profiler;->checkPoint(Ljava/lang/String;)V

    .line 662
    :cond_2
    move/from16 v21, p6

    move/from16 v18, p7

    move/from16 v17, v0

    move v7, v1

    const/4 v8, 0x4

    goto/16 :goto_a

    .line 641
    .end local v1    # "action":I
    .end local v19    # "i":I
    .end local p6    # "pause":Z
    .end local p7    # "retry":Z
    .restart local v5    # "p":Lorg/jpos/transaction/TransactionParticipant;
    .restart local v7    # "i":I
    .restart local v8    # "retry":Z
    .local v9, "pause":Z
    :cond_3
    move/from16 v19, v7

    move/from16 p7, v8

    move/from16 p6, v9

    move v8, v4

    move-object v9, v5

    .end local v5    # "p":Lorg/jpos/transaction/TransactionParticipant;
    .end local v7    # "i":I
    .end local v8    # "retry":Z
    .local v9, "p":Lorg/jpos/transaction/TransactionParticipant;
    .restart local v19    # "i":I
    .restart local p6    # "pause":Z
    .restart local p7    # "retry":Z
    iget-boolean v1, v12, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v1, :cond_4

    .line 642
    sget-object v3, Lorg/jpos/transaction/TransactionStatusEvent$State;->PREPARING:Lorg/jpos/transaction/TransactionStatusEvent$State;

    .line 643
    invoke-direct {v12, v9}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v7

    .line 642
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, p2

    move v8, v6

    move-object v6, v7

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    goto :goto_2

    .line 641
    :cond_4
    move v8, v6

    .line 645
    :goto_2
    invoke-virtual {v12, v9, v13, v14, v15}, Lorg/jpos/transaction/TransactionManager;->prepare(Lorg/jpos/transaction/TransactionParticipant;JLjava/io/Serializable;)I

    move-result v1

    .line 647
    .restart local v1    # "action":I
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    move/from16 v4, v17

    :goto_3
    move v0, v4

    .line 648
    and-int/lit8 v2, v1, 0x2

    if-ne v2, v8, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    move/from16 v4, v17

    :goto_4
    move v2, v4

    .line 649
    .end local p7    # "retry":Z
    .local v2, "retry":Z
    and-int/lit8 v3, v1, 0x4

    const/4 v8, 0x4

    if-ne v3, v8, :cond_7

    const/16 v17, 0x1

    :cond_7
    move/from16 v3, v17

    .line 650
    .end local p6    # "pause":Z
    .local v3, "pause":Z
    if-eqz v11, :cond_d

    .line 651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        prepare: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 652
    invoke-direct {v12, v9}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_8

    const-string v5, " ABORTED"

    goto :goto_5

    :cond_8
    const-string v5, " PREPARED"

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_9

    const-string v5, " RETRY"

    goto :goto_6

    :cond_9
    const-string v5, ""

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_a

    const-string v5, " PAUSE"

    goto :goto_7

    :cond_a
    const-string v5, ""

    :goto_7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v5, v1, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_b

    const-string v5, " READONLY"

    goto :goto_8

    :cond_b
    const-string v5, ""

    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v5, v1, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_c

    const-string v5, " NO_JOIN"

    goto :goto_9

    :cond_c
    const-string v5, ""

    :goto_9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    invoke-virtual {v11, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 658
    if-eqz v10, :cond_d

    .line 659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {v12, v9}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/jpos/util/Profiler;->checkPoint(Ljava/lang/String;)V

    .line 662
    :cond_d
    move/from16 v17, v0

    move v7, v1

    move/from16 v18, v2

    move/from16 v21, v3

    .end local v0    # "abort":Z
    .end local v1    # "action":I
    .end local v2    # "retry":Z
    .end local v3    # "pause":Z
    .local v7, "action":I
    .local v17, "abort":Z
    .local v18, "retry":Z
    .local v21, "pause":Z
    :goto_a
    and-int/lit16 v0, v7, 0x80

    if-nez v0, :cond_e

    .line 663
    new-instance v0, Lorg/jpos/util/Chronometer;

    invoke-direct {v0}, Lorg/jpos/util/Chronometer;-><init>()V

    .line 664
    .local v0, "c":Lorg/jpos/util/Chronometer;
    invoke-virtual {v12, v13, v14, v15}, Lorg/jpos/transaction/TransactionManager;->snapshot(JLjava/io/Serializable;)V

    .line 665
    iget-object v1, v12, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v1, :cond_e

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v12, v9}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-snapshot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 668
    .end local v0    # "c":Lorg/jpos/util/Chronometer;
    :cond_e
    and-int/lit8 v0, v7, 0x40

    if-nez v0, :cond_f

    .line 669
    move-object/from16 v6, p5

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 668
    :cond_f
    move-object/from16 v6, p5

    .line 671
    :goto_b
    instance-of v0, v9, Lorg/jpos/transaction/GroupSelector;

    if-eqz v0, :cond_18

    and-int/lit8 v0, v7, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    iget-boolean v0, v12, Lorg/jpos/transaction/TransactionManager;->callSelectorOnAbort:Z

    if-eqz v0, :cond_18

    .line 672
    :cond_10
    const/4 v1, 0x0

    .line 673
    .local v1, "groupName":Ljava/lang/String;
    new-instance v0, Lorg/jpos/util/Chronometer;

    invoke-direct {v0}, Lorg/jpos/util/Chronometer;-><init>()V

    move-object v2, v0

    .line 675
    .local v2, "c":Lorg/jpos/util/Chronometer;
    :try_start_0
    move-object v0, v9

    check-cast v0, Lorg/jpos/transaction/GroupSelector;

    invoke-interface {v0, v13, v14, v15}, Lorg/jpos/transaction/GroupSelector;->select(JLjava/io/Serializable;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 682
    iget-object v0, v12, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v0, :cond_12

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c
    invoke-direct {v12, v9}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-selector"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jpos/util/Chronometer;->lap()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    goto :goto_e

    .line 682
    :catchall_0
    move-exception v0

    goto/16 :goto_11

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v11, :cond_11

    .line 678
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "       selector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {v12, v9}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_d

    .line 680
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "       selector: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {v12, v9}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    iget-object v0, v12, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v0, :cond_12

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c

    .line 685
    :cond_12
    :goto_e
    if-eqz v11, :cond_13

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "       selector: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 688
    :cond_13
    if-eqz v1, :cond_18

    .line 689
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, " ,"

    invoke-direct {v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v3, "participants":Ljava/util/List;
    :goto_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 692
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 693
    .local v4, "grp":Ljava/lang/String;
    invoke-virtual {v12, v13, v14, v4}, Lorg/jpos/transaction/TransactionManager;->addGroup(JLjava/lang/String;)V

    .line 694
    if-eqz v11, :cond_14

    iget-object v5, v12, Lorg/jpos/transaction/TransactionManager;->groups:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_14

    .line 695
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "                 WARNING: group \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\' not configured"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 696
    :cond_14
    invoke-virtual {v12, v4}, Lorg/jpos/transaction/TransactionManager;->getParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 697
    .end local v4    # "grp":Ljava/lang/String;
    goto :goto_f

    .line 698
    :cond_15
    :goto_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 699
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 701
    :cond_16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 702
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    move-object/from16 v16, v4

    goto/16 :goto_17

    .line 682
    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "participants":Ljava/util/List;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    :goto_11
    iget-object v3, v12, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v3, :cond_17

    .line 683
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v12, v9}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-selector"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jpos/util/Chronometer;->lap()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 684
    :cond_17
    throw v0

    .line 705
    .end local v1    # "groupName":Ljava/lang/String;
    .end local v2    # "c":Lorg/jpos/util/Chronometer;
    :cond_18
    if-eqz v21, :cond_1e

    .line 706
    instance-of v0, v15, Lorg/jpos/transaction/Pausable;

    if-eqz v0, :cond_1d

    .line 707
    move-object v6, v15

    check-cast v6, Lorg/jpos/transaction/Pausable;

    .line 708
    .local v6, "pausable":Lorg/jpos/transaction/Pausable;
    invoke-interface {v6}, Lorg/jpos/transaction/Pausable;->getTimeout()J

    move-result-wide v0

    .line 709
    .local v0, "t":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    .line 710
    iget-wide v0, v12, Lorg/jpos/transaction/TransactionManager;->pauseTimeout:J

    move-wide v4, v0

    goto :goto_12

    .line 709
    :cond_19
    move-wide v4, v0

    .line 711
    .end local v0    # "t":J
    .local v4, "t":J
    :goto_12
    const/4 v0, 0x0

    .line 712
    .local v0, "expirationMonitor":Ljava/util/TimerTask;
    cmp-long v1, v4, v2

    if-lez v1, :cond_1a

    .line 713
    new-instance v1, Lorg/jpos/transaction/TransactionManager$PausedMonitor;

    invoke-direct {v1, v6}, Lorg/jpos/transaction/TransactionManager$PausedMonitor;-><init>(Lorg/jpos/transaction/Pausable;)V

    move-object v0, v1

    move-object v3, v0

    goto :goto_13

    .line 712
    :cond_1a
    move-object v3, v0

    .line 714
    .end local v0    # "expirationMonitor":Ljava/util/TimerTask;
    .local v3, "expirationMonitor":Ljava/util/TimerTask;
    :goto_13
    new-instance v0, Lorg/jpos/transaction/PausedTransaction;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v13, v4

    move-object v5, v3

    .end local v3    # "expirationMonitor":Ljava/util/TimerTask;
    .end local v4    # "t":J
    .local v5, "expirationMonitor":Ljava/util/TimerTask;
    .local v13, "t":J
    move-wide/from16 v3, p2

    move-object/from16 p6, v5

    .end local v5    # "expirationMonitor":Ljava/util/TimerTask;
    .local p6, "expirationMonitor":Ljava/util/TimerTask;
    move-object v5, v9

    move-wide/from16 v22, v13

    move-object v13, v6

    .end local v6    # "pausable":Lorg/jpos/transaction/Pausable;
    .local v13, "pausable":Lorg/jpos/transaction/Pausable;
    .local v22, "t":J
    move-object/from16 v6, p5

    move v14, v7

    .end local v7    # "action":I
    .local v14, "action":I
    move-object/from16 v7, v16

    move/from16 v20, v8

    move/from16 v8, v17

    move/from16 v24, v20

    move-object/from16 v20, v9

    .end local v9    # "p":Lorg/jpos/transaction/TransactionParticipant;
    .local v20, "p":Lorg/jpos/transaction/TransactionParticipant;
    move-object/from16 v9, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lorg/jpos/transaction/PausedTransaction;-><init>(Lorg/jpos/transaction/TransactionManager;JLorg/jpos/transaction/TransactionParticipant;Ljava/util/List;Ljava/util/Iterator;ZLjava/util/TimerTask;Lorg/jpos/util/Profiler;Lorg/jpos/util/LogEvent;)V

    .line 717
    .local v1, "pt":Lorg/jpos/transaction/PausedTransaction;
    invoke-interface {v13, v1}, Lorg/jpos/transaction/Pausable;->setPausedTransaction(Lorg/jpos/transaction/PausedTransaction;)V

    .line 718
    move-object/from16 v2, p6

    .end local p6    # "expirationMonitor":Ljava/util/TimerTask;
    .local v2, "expirationMonitor":Ljava/util/TimerTask;
    if-eqz v2, :cond_1c

    .line 719
    monitor-enter p4

    .line 720
    :try_start_2
    invoke-virtual {v1}, Lorg/jpos/transaction/PausedTransaction;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 721
    iget-object v0, v12, Lorg/jpos/transaction/TransactionManager;->timer:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v3, v22

    .end local v22    # "t":J
    .local v3, "t":J
    :try_start_3
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_14

    .line 720
    .end local v3    # "t":J
    .restart local v22    # "t":J
    :cond_1b
    move-wide/from16 v3, v22

    .line 725
    .end local v22    # "t":J
    .restart local v3    # "t":J
    :goto_14
    monitor-exit p4

    goto :goto_16

    .end local v3    # "t":J
    .restart local v22    # "t":J
    :catchall_1
    move-exception v0

    move-wide/from16 v3, v22

    .end local v22    # "t":J
    .restart local v3    # "t":J
    :goto_15
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_15

    .line 718
    .end local v3    # "t":J
    .restart local v22    # "t":J
    :cond_1c
    move-wide/from16 v3, v22

    .line 727
    .end local v1    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v2    # "expirationMonitor":Ljava/util/TimerTask;
    .end local v13    # "pausable":Lorg/jpos/transaction/Pausable;
    .end local v22    # "t":J
    :goto_16
    nop

    .line 730
    return v24

    .line 728
    .end local v14    # "action":I
    .end local v20    # "p":Lorg/jpos/transaction/TransactionParticipant;
    .restart local v7    # "action":I
    .restart local v9    # "p":Lorg/jpos/transaction/TransactionParticipant;
    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to PAUSE transaction - Context is not Pausable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_1e
    move v14, v7

    move-object/from16 v20, v9

    .line 619
    .end local v7    # "action":I
    .end local v9    # "p":Lorg/jpos/transaction/TransactionParticipant;
    :goto_17
    add-int/lit8 v7, v19, 0x1

    move-wide/from16 v13, p2

    move-object/from16 v11, p8

    move-object/from16 v10, p9

    move/from16 v0, v17

    move/from16 v8, v18

    move/from16 v9, v21

    .end local v19    # "i":I
    .local v7, "i":I
    goto/16 :goto_0

    .end local v17    # "abort":Z
    .end local v18    # "retry":Z
    .end local v21    # "pause":Z
    .local v0, "abort":Z
    .restart local v8    # "retry":Z
    .local v9, "pause":Z
    :cond_1f
    move v1, v4

    move/from16 v19, v7

    move/from16 p7, v8

    move/from16 p6, v9

    move v8, v6

    .line 733
    .end local v7    # "i":I
    .end local v8    # "retry":Z
    .end local v9    # "pause":Z
    .local p6, "pause":Z
    .restart local p7    # "retry":Z
    if-eqz v0, :cond_21

    if-eqz p7, :cond_20

    move v6, v8

    goto :goto_18

    :cond_20
    move/from16 v6, v17

    goto :goto_18

    :cond_21
    move v6, v1

    :goto_18
    return v6
.end method

.method protected prepare(Lorg/jpos/transaction/TransactionParticipant;JLjava/io/Serializable;)I
    .locals 6
    .param p1, "p"    # Lorg/jpos/transaction/TransactionParticipant;
    .param p2, "id"    # J
    .param p4, "context"    # Ljava/io/Serializable;

    .line 576
    const-string v0, "-prepare"

    new-instance v1, Lorg/jpos/util/Chronometer;

    invoke-direct {v1}, Lorg/jpos/util/Chronometer;-><init>()V

    .line 578
    .local v1, "c":Lorg/jpos/util/Chronometer;
    :try_start_0
    const-string v2, "prepare"

    invoke-direct {p0, p2, p3, v2, p1}, Lorg/jpos/transaction/TransactionManager;->setThreadName(JLjava/lang/String;Lorg/jpos/transaction/TransactionParticipant;)V

    .line 579
    invoke-interface {p1, p2, p3, p4}, Lorg/jpos/transaction/TransactionParticipant;->prepare(JLjava/io/Serializable;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v3, :cond_0

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 579
    :cond_0
    return v2

    .line 580
    :catchall_0
    move-exception v2

    .line 581
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PREPARE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 583
    .end local v2    # "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v2, :cond_1

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 586
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 583
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v3, :cond_2

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 585
    :cond_2
    throw v2
.end method

.method protected prepareForAbort(Lorg/jpos/transaction/TransactionParticipant;JLjava/io/Serializable;)I
    .locals 6
    .param p1, "p"    # Lorg/jpos/transaction/TransactionParticipant;
    .param p2, "id"    # J
    .param p4, "context"    # Ljava/io/Serializable;

    .line 559
    const-string v0, "-prepare-for-abort"

    new-instance v1, Lorg/jpos/util/Chronometer;

    invoke-direct {v1}, Lorg/jpos/util/Chronometer;-><init>()V

    .line 561
    .local v1, "c":Lorg/jpos/util/Chronometer;
    :try_start_0
    instance-of v2, p1, Lorg/jpos/transaction/AbortParticipant;

    if-eqz v2, :cond_1

    .line 562
    const-string v2, "prepareForAbort"

    invoke-direct {p0, p2, p3, v2, p1}, Lorg/jpos/transaction/TransactionManager;->setThreadName(JLjava/lang/String;Lorg/jpos/transaction/TransactionParticipant;)V

    .line 563
    move-object v2, p1

    check-cast v2, Lorg/jpos/transaction/AbortParticipant;

    invoke-interface {v2, p2, p3, p4}, Lorg/jpos/transaction/AbortParticipant;->prepareForAbort(JLjava/io/Serializable;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v3, :cond_0

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 563
    :cond_0
    return v2

    .line 568
    :cond_1
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v2, :cond_2

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-direct {p0, p1}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    goto :goto_1

    .line 565
    :catchall_0
    move-exception v2

    .line 566
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PREPARE-FOR-ABORT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 568
    .end local v2    # "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v2, :cond_2

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 571
    :cond_2
    :goto_1
    const/16 v0, 0x40

    return v0

    .line 568
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v3, :cond_3

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/jpos/util/Chronometer;->elapsed()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    .line 570
    :cond_3
    throw v2
.end method

.method protected purge(JZ)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "full"    # Z

    .line 928
    const-string v0, "$STATE."

    invoke-virtual {p0, v0, p1, p2}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "stateKey":Ljava/lang/String;
    const-string v1, "$CONTEXT."

    invoke-virtual {p0, v1, p1, p2}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, "contextKey":Ljava/lang/String;
    const-string v2, "$GROUPS."

    invoke-virtual {p0, v2, p1, p2}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, "groupsKey":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    monitor-enter v3

    .line 932
    :try_start_0
    iget-object v4, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-virtual {p0, v4}, Lorg/jpos/transaction/TransactionManager;->commitOff(Lorg/jpos/space/Space;)V

    .line 933
    if-eqz p3, :cond_0

    .line 934
    iget-object v4, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-static {v4, v0}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 935
    :cond_0
    iget-object v4, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-static {v4, v1}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 936
    iget-object v4, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-static {v4, v2}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 937
    iget-object v4, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-virtual {p0, v4}, Lorg/jpos/transaction/TransactionManager;->commitOn(Lorg/jpos/space/Space;)V

    .line 938
    monitor-exit v3

    .line 939
    return-void

    .line 938
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public push(Ljava/io/Serializable;)V
    .locals 2
    .param p1, "context"    # Ljava/io/Serializable;

    .line 189
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/jpos/space/Space;->push(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public queue(Ljava/io/Serializable;)V
    .locals 2
    .param p1, "context"    # Ljava/io/Serializable;

    .line 186
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method protected recover()V
    .locals 5

    .line 942
    iget-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->doRecover:Z

    if-eqz v0, :cond_1

    .line 943
    iget-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    iget-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 944
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recover - tail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", head="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 946
    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    iget-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 947
    const/4 v0, 0x0

    iget-wide v1, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/jpos/transaction/TransactionManager;->recover(IJ)V

    goto :goto_0

    .line 950
    :cond_1
    iget-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->head:J

    iput-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    .line 951
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->syncTail()V

    .line 952
    return-void
.end method

.method protected recover(IJ)V
    .locals 18
    .param p1, "session"    # I
    .param p2, "id"    # J

    .line 954
    move-object/from16 v10, p0

    move-wide/from16 v11, p2

    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v0

    const-string v1, "recover"

    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v13

    .line 955
    .local v13, "evt":Lorg/jpos/util/LogEvent;
    new-instance v0, Lorg/jpos/util/Profiler;

    invoke-direct {v0}, Lorg/jpos/util/Profiler;-><init>()V

    move-object v14, v0

    .line 956
    .local v14, "prof":Lorg/jpos/util/Profiler;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 958
    :try_start_0
    const-string v0, "$STATE."

    invoke-virtual {v10, v0, v11, v12}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "stateKey":Ljava/lang/String;
    const-string v1, "$CONTEXT."

    invoke-virtual {v10, v1, v11, v12}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .line 960
    .local v15, "contextKey":Ljava/lang/String;
    iget-object v1, v10, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v1, v0}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v9, v1

    .line 961
    .local v9, "state":Ljava/lang/Integer;
    if-nez v9, :cond_0

    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown stateKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 963
    iget-object v1, v10, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-static {v1, v15}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    invoke-virtual {v13, v14}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 980
    invoke-static {v13}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 964
    return-void

    .line 966
    :cond_0
    :try_start_1
    iget-object v1, v10, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v1, v15}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    move-object v8, v1

    .line 967
    .local v8, "context":Ljava/io/Serializable;
    if-eqz v8, :cond_1

    .line 968
    invoke-virtual {v13, v8}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 970
    :cond_1
    sget-object v1, Lorg/jpos/transaction/TransactionManager;->DONE:Ljava/lang/Integer;

    invoke-virtual {v1, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 971
    const-string v1, "<done/>"

    invoke-virtual {v13, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    move-object/from16 v17, v0

    move-object/from16 v16, v8

    move-object v0, v9

    goto :goto_0

    .line 972
    :cond_2
    sget-object v1, Lorg/jpos/transaction/TransactionManager;->COMMITTING:Ljava/lang/Integer;

    invoke-virtual {v1, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 973
    invoke-virtual {v10, v11, v12}, Lorg/jpos/transaction/TransactionManager;->getParticipants(J)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-object v5, v8

    move-object/from16 v16, v8

    .end local v8    # "context":Ljava/io/Serializable;
    .local v16, "context":Ljava/io/Serializable;
    move-object v8, v13

    move-object/from16 v17, v0

    move-object v0, v9

    .end local v9    # "state":Ljava/lang/Integer;
    .local v0, "state":Ljava/lang/Integer;
    .local v17, "stateKey":Ljava/lang/String;
    move-object v9, v14

    invoke-virtual/range {v1 .. v9}, Lorg/jpos/transaction/TransactionManager;->commit(IJLjava/io/Serializable;Ljava/util/List;ZLorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)V

    goto :goto_0

    .line 974
    .end local v16    # "context":Ljava/io/Serializable;
    .end local v17    # "stateKey":Ljava/lang/String;
    .local v0, "stateKey":Ljava/lang/String;
    .restart local v8    # "context":Ljava/io/Serializable;
    .restart local v9    # "state":Ljava/lang/Integer;
    :cond_3
    move-object/from16 v17, v0

    move-object/from16 v16, v8

    move-object v0, v9

    .end local v8    # "context":Ljava/io/Serializable;
    .end local v9    # "state":Ljava/lang/Integer;
    .local v0, "state":Ljava/lang/Integer;
    .restart local v16    # "context":Ljava/io/Serializable;
    .restart local v17    # "stateKey":Ljava/lang/String;
    sget-object v1, Lorg/jpos/transaction/TransactionManager;->PREPARING:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 975
    invoke-virtual {v10, v11, v12}, Lorg/jpos/transaction/TransactionManager;->getParticipants(J)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, v16

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v1 .. v9}, Lorg/jpos/transaction/TransactionManager;->abort(IJLjava/io/Serializable;Ljava/util/List;ZLorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)V

    .line 977
    :cond_4
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v10, v11, v12, v1}, Lorg/jpos/transaction/TransactionManager;->purge(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    .end local v0    # "state":Ljava/lang/Integer;
    .end local v15    # "contextKey":Ljava/lang/String;
    .end local v16    # "context":Ljava/io/Serializable;
    .end local v17    # "stateKey":Ljava/lang/String;
    invoke-virtual {v13, v14}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 980
    invoke-static {v13}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 981
    nop

    .line 982
    return-void

    .line 979
    :catchall_0
    move-exception v0

    invoke-virtual {v13, v14}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 980
    invoke-static {v13}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 981
    throw v0
.end method

.method public removeListener(Lorg/jpos/transaction/TransactionStatusListener;)V
    .locals 2
    .param p1, "l"    # Lorg/jpos/transaction/TransactionStatusListener;

    .line 461
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->statusListeners:Ljava/util/List;

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->statusListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 463
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->statusListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    .line 464
    monitor-exit v0

    .line 465
    return-void

    .line 464
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetTPS()V
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    invoke-virtual {v0}, Lorg/jpos/util/TPS;->reset()V

    .line 498
    return-void
.end method

.method public run()V
    .locals 54

    .line 207
    move-object/from16 v11, p0

    const-string v12, "WARNING: IN-TRANSIT TOO HIGH"

    const-string v13, " %s, elapsed=%dms"

    const-string v14, "commit"

    const-string v15, "abort"

    const-string v10, "undefined"

    const-wide/16 v0, 0x0

    .line 208
    .local v0, "id":J
    const/4 v2, 0x0

    .line 209
    .local v2, "session":I
    const/4 v3, 0x0

    .line 210
    .local v3, "members":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    const/4 v4, 0x0

    .line 212
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    const/4 v5, 0x0

    .line 213
    .local v5, "abort":Z
    const/4 v6, 0x0

    .line 217
    .local v6, "evt":Lorg/jpos/util/LogEvent;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    .line 218
    .local v9, "thread":Ljava/lang/Thread;
    iget-object v7, v11, Lorg/jpos/transaction/TransactionManager;->threads:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget v8, v11, Lorg/jpos/transaction/TransactionManager;->maxSessions:I

    if-ge v7, v8, :cond_6d

    .line 219
    iget-object v7, v11, Lorg/jpos/transaction/TransactionManager;->threads:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v7, v11, Lorg/jpos/transaction/TransactionManager;->threads:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 221
    .end local v2    # "session":I
    .local v8, "session":I
    iget-object v2, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 226
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v0

    .end local v0    # "id":J
    .local v16, "id":J
    const-string v0, "start "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    .line 227
    .end local v3    # "members":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    .end local v5    # "abort":Z
    .local v18, "members":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    .local v20, "abort":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->running()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 228
    const/4 v7, 0x0

    .line 229
    .local v7, "context":Ljava/io/Serializable;
    const/4 v4, 0x0

    .line 230
    .local v4, "prof":Lorg/jpos/util/Profiler;
    const/4 v6, 0x0

    .line 231
    const/16 v21, 0x0

    .line 232
    .local v21, "paused":Z
    const/16 v22, 0x0

    .line 233
    .local v22, "transactionActive":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 234
    const/4 v5, -0x1

    .line 236
    .local v5, "action":I
    const-wide/16 v23, -0x1

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    move-object/from16 v25, v7

    .end local v7    # "context":Ljava/io/Serializable;
    .local v25, "context":Ljava/io/Serializable;
    const/4 v7, 0x1

    :try_start_0
    iget-boolean v0, v11, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_22

    if-eqz v0, :cond_0

    .line 237
    :try_start_1
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->READY:Lorg/jpos/transaction/TransactionStatusEvent$State;

    const-string v26, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v27, 0x0

    move-object/from16 v1, p0

    move v2, v8

    move-object v3, v0

    move-object/from16 v29, v4

    move/from16 v30, v5

    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v5    # "action":I
    .local v29, "prof":Lorg/jpos/util/Profiler;
    .local v30, "action":I
    move-wide/from16 v4, v16

    move-object/from16 v31, v9

    move-object v9, v6

    .end local v6    # "evt":Lorg/jpos/util/LogEvent;
    .local v9, "evt":Lorg/jpos/util/LogEvent;
    .local v31, "thread":Ljava/lang/Thread;
    move-object/from16 v6, v26

    move-object/from16 v26, v25

    move-object/from16 v25, v13

    move v13, v7

    .end local v25    # "context":Ljava/io/Serializable;
    .local v26, "context":Ljava/io/Serializable;
    move-object/from16 v7, v27

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 358
    :catchall_0
    move-exception v0

    move-object v13, v9

    move-object v6, v10

    move-object v4, v12

    move-object v12, v14

    move-object v7, v15

    move-object/from16 v5, v25

    move-object/from16 v15, v26

    move-object/from16 v9, v29

    move-object/from16 v45, v31

    move/from16 v25, v8

    move/from16 v8, v30

    goto/16 :goto_38

    .end local v26    # "context":Ljava/io/Serializable;
    .end local v29    # "prof":Lorg/jpos/util/Profiler;
    .end local v30    # "action":I
    .end local v31    # "thread":Ljava/lang/Thread;
    .restart local v4    # "prof":Lorg/jpos/util/Profiler;
    .restart local v5    # "action":I
    .restart local v6    # "evt":Lorg/jpos/util/LogEvent;
    .local v9, "thread":Ljava/lang/Thread;
    .restart local v25    # "context":Ljava/io/Serializable;
    :catchall_1
    move-exception v0

    move-object/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v31, v9

    move-object/from16 v26, v25

    move-object v9, v6

    move-object/from16 v25, v13

    move-object v13, v9

    move-object v6, v10

    move-object v4, v12

    move-object v12, v14

    move-object v7, v15

    move-object/from16 v5, v25

    move-object/from16 v15, v26

    move-object/from16 v9, v29

    move-object/from16 v45, v31

    move/from16 v25, v8

    move/from16 v8, v30

    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v5    # "action":I
    .end local v6    # "evt":Lorg/jpos/util/LogEvent;
    .end local v25    # "context":Ljava/io/Serializable;
    .local v9, "evt":Lorg/jpos/util/LogEvent;
    .restart local v26    # "context":Ljava/io/Serializable;
    .restart local v29    # "prof":Lorg/jpos/util/Profiler;
    .restart local v30    # "action":I
    .restart local v31    # "thread":Ljava/lang/Thread;
    goto/16 :goto_38

    .line 236
    .end local v26    # "context":Ljava/io/Serializable;
    .end local v29    # "prof":Lorg/jpos/util/Profiler;
    .end local v30    # "action":I
    .end local v31    # "thread":Ljava/lang/Thread;
    .restart local v4    # "prof":Lorg/jpos/util/Profiler;
    .restart local v5    # "action":I
    .restart local v6    # "evt":Lorg/jpos/util/LogEvent;
    .local v9, "thread":Ljava/lang/Thread;
    .restart local v25    # "context":Ljava/io/Serializable;
    :cond_0
    move-object/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v31, v9

    move-object/from16 v26, v25

    move-object v9, v6

    move-object/from16 v25, v13

    move v13, v7

    .line 239
    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v5    # "action":I
    .end local v6    # "evt":Lorg/jpos/util/LogEvent;
    .end local v25    # "context":Ljava/io/Serializable;
    .local v9, "evt":Lorg/jpos/util/LogEvent;
    .restart local v26    # "context":Ljava/io/Serializable;
    .restart local v29    # "prof":Lorg/jpos/util/Profiler;
    .restart local v30    # "action":I
    .restart local v31    # "thread":Ljava/lang/Thread;
    :goto_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->isSessionToStandDown()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_b

    .line 364
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V

    .line 365
    if-eqz v22, :cond_1

    if-nez v21, :cond_1

    .line 366
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 367
    :cond_1
    iget-boolean v0, v11, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_3

    .line 368
    if-eqz v21, :cond_2

    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

    :goto_2
    move-object v3, v0

    const-string v6, ""

    move-object/from16 v1, p0

    move v2, v8

    move-wide/from16 v4, v16

    move-object/from16 v7, v26

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    .line 373
    :cond_3
    if-eqz v9, :cond_a

    move/from16 v7, v30

    .end local v30    # "action":I
    .local v7, "action":I
    if-eq v7, v13, :cond_6

    if-eqz v7, :cond_6

    const/4 v6, -0x1

    if-ne v7, v6, :cond_5

    move-object/from16 v4, v29

    .end local v29    # "prof":Lorg/jpos/util/Profiler;
    .restart local v4    # "prof":Lorg/jpos/util/Profiler;
    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v25, v8

    goto/16 :goto_12

    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .restart local v29    # "prof":Lorg/jpos/util/Profiler;
    :cond_5
    move-object/from16 v4, v29

    .end local v29    # "prof":Lorg/jpos/util/Profiler;
    .restart local v4    # "prof":Lorg/jpos/util/Profiler;
    move/from16 v25, v8

    goto/16 :goto_12

    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .restart local v29    # "prof":Lorg/jpos/util/Profiler;
    :cond_6
    move-object/from16 v4, v29

    .line 374
    .end local v29    # "prof":Lorg/jpos/util/Profiler;
    .restart local v4    # "prof":Lorg/jpos/util/Profiler;
    :goto_3
    packed-switch v7, :pswitch_data_0

    goto :goto_4

    .line 376
    :pswitch_0
    invoke-virtual {v9, v14}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 377
    goto :goto_4

    .line 379
    :pswitch_1
    invoke-virtual {v9, v15}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 380
    goto :goto_4

    .line 382
    :pswitch_2
    invoke-virtual {v9, v10}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 385
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v0

    iget v2, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    iget-object v3, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 386
    invoke-virtual {v9, v12}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 388
    :cond_7
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    .line 390
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->tmInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    if-eqz v4, :cond_8

    .line 391
    invoke-virtual {v4}, Lorg/jpos/util/Profiler;->getElapsedInMillis()J

    move-result-wide v23

    goto :goto_5

    :cond_8
    nop

    :goto_5
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    .line 389
    move-object/from16 v2, v25

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v9, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 394
    if-eqz v4, :cond_9

    .line 395
    invoke-virtual {v9, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 397
    :cond_9
    move-object/from16 v1, v26

    .end local v26    # "context":Ljava/io/Serializable;
    .local v1, "context":Ljava/io/Serializable;
    :try_start_4
    invoke-virtual {v11, v1, v9, v4}, Lorg/jpos/transaction/TransactionManager;->freeze(Ljava/io/Serializable;Lorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)Lorg/jpos/util/FrozenLogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 398
    :catchall_2
    move-exception v0

    .line 399
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 400
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_6
    move/from16 v25, v8

    goto/16 :goto_12

    .line 373
    .end local v1    # "context":Ljava/io/Serializable;
    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v7    # "action":I
    .restart local v26    # "context":Ljava/io/Serializable;
    .restart local v29    # "prof":Lorg/jpos/util/Profiler;
    .restart local v30    # "action":I
    :cond_a
    move-object/from16 v1, v26

    move-object/from16 v4, v29

    move/from16 v7, v30

    .end local v26    # "context":Ljava/io/Serializable;
    .end local v29    # "prof":Lorg/jpos/util/Profiler;
    .end local v30    # "action":I
    .restart local v1    # "context":Ljava/io/Serializable;
    .restart local v4    # "prof":Lorg/jpos/util/Profiler;
    .restart local v7    # "action":I
    move/from16 v25, v8

    goto/16 :goto_12

    .line 242
    .end local v1    # "context":Ljava/io/Serializable;
    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v7    # "action":I
    .restart local v26    # "context":Ljava/io/Serializable;
    .restart local v29    # "prof":Lorg/jpos/util/Profiler;
    .restart local v30    # "action":I
    :cond_b
    move-object/from16 v2, v25

    move-object/from16 v1, v26

    move-object/from16 v4, v29

    move/from16 v7, v30

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x1

    .end local v26    # "context":Ljava/io/Serializable;
    .end local v29    # "prof":Lorg/jpos/util/Profiler;
    .end local v30    # "action":I
    .restart local v1    # "context":Ljava/io/Serializable;
    .restart local v4    # "prof":Lorg/jpos/util/Profiler;
    .restart local v7    # "action":I
    :try_start_5
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    iget-object v3, v11, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    const-wide/16 v5, 0x3a98

    invoke-interface {v0, v3, v5, v6}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    .line 243
    .local v6, "obj":Ljava/lang/Object;
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_20

    if-ne v6, v0, :cond_16

    .line 364
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V

    .line 365
    if-eqz v22, :cond_c

    if-nez v21, :cond_c

    .line 366
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 367
    :cond_c
    iget-boolean v0, v11, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_e

    .line 368
    if-eqz v21, :cond_d

    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

    goto :goto_7

    :cond_d
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

    :goto_7
    move-object v3, v0

    const-string v0, ""

    move-object v5, v1

    .end local v1    # "context":Ljava/io/Serializable;
    .local v5, "context":Ljava/io/Serializable;
    move-object/from16 v1, p0

    move-object/from16 v32, v2

    move v2, v8

    move-object/from16 v33, v4

    move-object/from16 v26, v5

    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v5    # "context":Ljava/io/Serializable;
    .restart local v26    # "context":Ljava/io/Serializable;
    .local v33, "prof":Lorg/jpos/util/Profiler;
    move-wide/from16 v4, v16

    move-object/from16 v34, v6

    .end local v6    # "obj":Ljava/lang/Object;
    .local v34, "obj":Ljava/lang/Object;
    move-object v6, v0

    move/from16 v25, v8

    move v8, v7

    .end local v7    # "action":I
    .local v8, "action":I
    .local v25, "session":I
    move-object/from16 v7, v26

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    goto :goto_8

    .line 367
    .end local v25    # "session":I
    .end local v26    # "context":Ljava/io/Serializable;
    .end local v33    # "prof":Lorg/jpos/util/Profiler;
    .end local v34    # "obj":Ljava/lang/Object;
    .restart local v1    # "context":Ljava/io/Serializable;
    .restart local v4    # "prof":Lorg/jpos/util/Profiler;
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v7    # "action":I
    .local v8, "session":I
    :cond_e
    move-object/from16 v26, v1

    move-object/from16 v32, v2

    move-object/from16 v33, v4

    move-object/from16 v34, v6

    move/from16 v25, v8

    move v8, v7

    .line 373
    .end local v1    # "context":Ljava/io/Serializable;
    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "action":I
    .local v8, "action":I
    .restart local v25    # "session":I
    .restart local v26    # "context":Ljava/io/Serializable;
    .restart local v33    # "prof":Lorg/jpos/util/Profiler;
    .restart local v34    # "obj":Ljava/lang/Object;
    :goto_8
    if-eqz v9, :cond_15

    if-eq v8, v13, :cond_11

    if-eqz v8, :cond_11

    const/4 v7, -0x1

    if-ne v8, v7, :cond_f

    move-object/from16 v6, v33

    .end local v33    # "prof":Lorg/jpos/util/Profiler;
    .local v6, "prof":Lorg/jpos/util/Profiler;
    if-eqz v6, :cond_10

    goto :goto_9

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v33    # "prof":Lorg/jpos/util/Profiler;
    :cond_f
    move-object/from16 v6, v33

    .end local v33    # "prof":Lorg/jpos/util/Profiler;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    :cond_10
    move-object/from16 v5, v32

    goto/16 :goto_1e

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v33    # "prof":Lorg/jpos/util/Profiler;
    :cond_11
    move-object/from16 v6, v33

    .line 374
    .end local v33    # "prof":Lorg/jpos/util/Profiler;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    :goto_9
    packed-switch v8, :pswitch_data_1

    goto :goto_a

    .line 376
    :pswitch_3
    invoke-virtual {v9, v14}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 377
    goto :goto_a

    .line 379
    :pswitch_4
    invoke-virtual {v9, v15}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 380
    goto :goto_a

    .line 382
    :pswitch_5
    invoke-virtual {v9, v10}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 385
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v0

    iget v2, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    iget-object v3, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 386
    invoke-virtual {v9, v12}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 388
    :cond_12
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    .line 390
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->tmInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v0, v5

    if-eqz v6, :cond_13

    .line 391
    invoke-virtual {v6}, Lorg/jpos/util/Profiler;->getElapsedInMillis()J

    move-result-wide v23

    goto :goto_b

    :cond_13
    nop

    :goto_b
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    .line 389
    move-object/from16 v3, v32

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v9, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 394
    if-eqz v6, :cond_14

    .line 395
    invoke-virtual {v9, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 397
    :cond_14
    move-object/from16 v2, v26

    .end local v26    # "context":Ljava/io/Serializable;
    .local v2, "context":Ljava/io/Serializable;
    :try_start_6
    invoke-virtual {v11, v2, v9, v6}, Lorg/jpos/transaction/TransactionManager;->freeze(Ljava/io/Serializable;Lorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)Lorg/jpos/util/FrozenLogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 400
    move-object v5, v3

    goto/16 :goto_1e

    .line 398
    :catchall_3
    move-exception v0

    .line 399
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 400
    .end local v0    # "t":Ljava/lang/Throwable;
    move-object v5, v3

    goto/16 :goto_1e

    .line 373
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v26    # "context":Ljava/io/Serializable;
    .restart local v33    # "prof":Lorg/jpos/util/Profiler;
    :cond_15
    move-object/from16 v2, v26

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    .end local v26    # "context":Ljava/io/Serializable;
    .end local v33    # "prof":Lorg/jpos/util/Profiler;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    move-object v5, v3

    goto/16 :goto_1e

    .line 246
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v25    # "session":I
    .end local v34    # "obj":Ljava/lang/Object;
    .restart local v1    # "context":Ljava/io/Serializable;
    .restart local v4    # "prof":Lorg/jpos/util/Profiler;
    .local v6, "obj":Ljava/lang/Object;
    .restart local v7    # "action":I
    .local v8, "session":I
    :cond_16
    move-object v3, v2

    move-object/from16 v34, v6

    move/from16 v25, v8

    const/4 v5, 0x0

    move-object v2, v1

    move-object v6, v4

    move v8, v7

    const/4 v4, 0x2

    const/4 v7, -0x1

    .end local v1    # "context":Ljava/io/Serializable;
    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v7    # "action":I
    .restart local v2    # "context":Ljava/io/Serializable;
    .local v6, "prof":Lorg/jpos/util/Profiler;
    .local v8, "action":I
    .restart local v25    # "session":I
    .restart local v34    # "obj":Ljava/lang/Object;
    move-object/from16 v1, v34

    .end local v34    # "obj":Ljava/lang/Object;
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_2c

    .line 247
    add-int/lit8 v0, v25, 0x1

    :try_start_7
    iget v4, v11, Lorg/jpos/transaction/TransactionManager;->sessions:I

    if-le v0, v4, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getActiveSessions()I

    move-result v0

    iget v4, v11, Lorg/jpos/transaction/TransactionManager;->sessions:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-le v0, v4, :cond_21

    .line 364
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V

    .line 365
    if-eqz v22, :cond_17

    if-nez v21, :cond_17

    .line 366
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 367
    :cond_17
    iget-boolean v0, v11, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_19

    .line 368
    if-eqz v21, :cond_18

    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

    goto :goto_c

    :cond_18
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

    :goto_c
    const-string v26, ""

    move-object v4, v1

    .end local v1    # "obj":Ljava/lang/Object;
    .local v4, "obj":Ljava/lang/Object;
    move-object/from16 v1, p0

    move-object/from16 v27, v2

    .end local v2    # "context":Ljava/io/Serializable;
    .local v27, "context":Ljava/io/Serializable;
    move/from16 v2, v25

    move-object/from16 v35, v3

    move-object v3, v0

    move-object/from16 v36, v4

    .end local v4    # "obj":Ljava/lang/Object;
    .local v36, "obj":Ljava/lang/Object;
    move-wide/from16 v4, v16

    move-object/from16 v37, v6

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .local v37, "prof":Lorg/jpos/util/Profiler;
    move-object/from16 v6, v26

    move-object/from16 v7, v27

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    goto :goto_d

    .line 367
    .end local v27    # "context":Ljava/io/Serializable;
    .end local v36    # "obj":Ljava/lang/Object;
    .end local v37    # "prof":Lorg/jpos/util/Profiler;
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    :cond_19
    move-object/from16 v36, v1

    move-object/from16 v27, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v6

    .line 373
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v27    # "context":Ljava/io/Serializable;
    .restart local v36    # "obj":Ljava/lang/Object;
    .restart local v37    # "prof":Lorg/jpos/util/Profiler;
    :goto_d
    if-eqz v9, :cond_1f

    if-eq v8, v13, :cond_1b

    if-eqz v8, :cond_1b

    const/4 v7, -0x1

    if-ne v8, v7, :cond_1a

    move-object/from16 v6, v37

    .end local v37    # "prof":Lorg/jpos/util/Profiler;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    if-eqz v6, :cond_20

    goto :goto_e

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v37    # "prof":Lorg/jpos/util/Profiler;
    :cond_1a
    move-object/from16 v6, v37

    .end local v37    # "prof":Lorg/jpos/util/Profiler;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    goto :goto_12

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v37    # "prof":Lorg/jpos/util/Profiler;
    :cond_1b
    move-object/from16 v6, v37

    .line 374
    .end local v37    # "prof":Lorg/jpos/util/Profiler;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    :goto_e
    packed-switch v8, :pswitch_data_2

    goto :goto_f

    .line 376
    :pswitch_6
    invoke-virtual {v9, v14}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 377
    goto :goto_f

    .line 379
    :pswitch_7
    invoke-virtual {v9, v15}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 380
    goto :goto_f

    .line 382
    :pswitch_8
    invoke-virtual {v9, v10}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 385
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v0

    iget v2, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    iget-object v3, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 386
    invoke-virtual {v9, v12}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 388
    :cond_1c
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    .line 390
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->tmInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v0, v5

    if-eqz v6, :cond_1d

    .line 391
    invoke-virtual {v6}, Lorg/jpos/util/Profiler;->getElapsedInMillis()J

    move-result-wide v23

    goto :goto_10

    :cond_1d
    nop

    :goto_10
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    .line 389
    move-object/from16 v3, v35

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v9, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 394
    if-eqz v6, :cond_1e

    .line 395
    invoke-virtual {v9, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 397
    :cond_1e
    move-object/from16 v2, v27

    .end local v27    # "context":Ljava/io/Serializable;
    .restart local v2    # "context":Ljava/io/Serializable;
    :try_start_8
    invoke-virtual {v11, v2, v9, v6}, Lorg/jpos/transaction/TransactionManager;->freeze(Ljava/io/Serializable;Lorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)Lorg/jpos/util/FrozenLogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_11

    .line 398
    :catchall_4
    move-exception v0

    .line 399
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 400
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_11
    goto :goto_12

    .line 373
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v27    # "context":Ljava/io/Serializable;
    .restart local v37    # "prof":Lorg/jpos/util/Profiler;
    :cond_1f
    move-object/from16 v2, v27

    move-object/from16 v6, v37

    .line 404
    .end local v21    # "paused":Z
    .end local v22    # "transactionActive":Z
    .end local v25    # "session":I
    .end local v27    # "context":Ljava/io/Serializable;
    .end local v36    # "obj":Ljava/lang/Object;
    .end local v37    # "prof":Lorg/jpos/util/Profiler;
    .local v8, "session":I
    :cond_20
    :goto_12
    move-object v6, v9

    move-object/from16 v45, v31

    .end local v8    # "session":I
    .restart local v25    # "session":I
    goto/16 :goto_48

    .line 247
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    .local v8, "action":I
    .restart local v21    # "paused":Z
    .restart local v22    # "transactionActive":Z
    :cond_21
    move-object/from16 v36, v1

    const/4 v4, 0x2

    .line 364
    .end local v1    # "obj":Ljava/lang/Object;
    .restart local v36    # "obj":Ljava/lang/Object;
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V

    .line 365
    if-eqz v22, :cond_22

    if-nez v21, :cond_22

    .line 366
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 367
    :cond_22
    iget-boolean v0, v11, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_24

    .line 368
    if-eqz v21, :cond_23

    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

    goto :goto_13

    :cond_23
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

    :goto_13
    const-string v26, ""

    move-object/from16 v1, p0

    move-object/from16 v27, v2

    .end local v2    # "context":Ljava/io/Serializable;
    .restart local v27    # "context":Ljava/io/Serializable;
    move/from16 v2, v25

    move-object/from16 v38, v3

    move-object v3, v0

    move-wide/from16 v4, v16

    move-object/from16 v39, v6

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .local v39, "prof":Lorg/jpos/util/Profiler;
    move-object/from16 v6, v26

    move-object/from16 v7, v27

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    goto :goto_14

    .line 367
    .end local v27    # "context":Ljava/io/Serializable;
    .end local v39    # "prof":Lorg/jpos/util/Profiler;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    :cond_24
    move-object/from16 v27, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v6

    .line 373
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v27    # "context":Ljava/io/Serializable;
    .restart local v39    # "prof":Lorg/jpos/util/Profiler;
    :goto_14
    if-eqz v9, :cond_2b

    if-eq v8, v13, :cond_27

    if-eqz v8, :cond_27

    const/4 v7, -0x1

    if-ne v8, v7, :cond_25

    move-object/from16 v6, v39

    .end local v39    # "prof":Lorg/jpos/util/Profiler;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    if-eqz v6, :cond_26

    goto :goto_15

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v39    # "prof":Lorg/jpos/util/Profiler;
    :cond_25
    move-object/from16 v6, v39

    .end local v39    # "prof":Lorg/jpos/util/Profiler;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    :cond_26
    move-object/from16 v5, v38

    goto/16 :goto_1e

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v39    # "prof":Lorg/jpos/util/Profiler;
    :cond_27
    move-object/from16 v6, v39

    .line 374
    .end local v39    # "prof":Lorg/jpos/util/Profiler;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    :goto_15
    packed-switch v8, :pswitch_data_3

    goto :goto_16

    .line 376
    :pswitch_9
    invoke-virtual {v9, v14}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 377
    goto :goto_16

    .line 379
    :pswitch_a
    invoke-virtual {v9, v15}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 380
    goto :goto_16

    .line 382
    :pswitch_b
    invoke-virtual {v9, v10}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 385
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v0

    iget v2, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    iget-object v3, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 386
    invoke-virtual {v9, v12}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 388
    :cond_28
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    .line 390
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->tmInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v0, v5

    if-eqz v6, :cond_29

    .line 391
    invoke-virtual {v6}, Lorg/jpos/util/Profiler;->getElapsedInMillis()J

    move-result-wide v23

    goto :goto_17

    :cond_29
    nop

    :goto_17
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    .line 389
    move-object/from16 v3, v38

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v9, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 394
    if-eqz v6, :cond_2a

    .line 395
    invoke-virtual {v9, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 397
    :cond_2a
    move-object/from16 v2, v27

    .end local v27    # "context":Ljava/io/Serializable;
    .restart local v2    # "context":Ljava/io/Serializable;
    :try_start_9
    invoke-virtual {v11, v2, v9, v6}, Lorg/jpos/transaction/TransactionManager;->freeze(Ljava/io/Serializable;Lorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)Lorg/jpos/util/FrozenLogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 400
    move-object v5, v3

    goto/16 :goto_1e

    .line 398
    :catchall_5
    move-exception v0

    .line 399
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 400
    .end local v0    # "t":Ljava/lang/Throwable;
    move-object v5, v3

    goto/16 :goto_1e

    .line 373
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v27    # "context":Ljava/io/Serializable;
    .restart local v39    # "prof":Lorg/jpos/util/Profiler;
    :cond_2b
    move-object/from16 v2, v27

    move-object/from16 v3, v38

    move-object/from16 v6, v39

    .end local v27    # "context":Ljava/io/Serializable;
    .end local v39    # "prof":Lorg/jpos/util/Profiler;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    move-object v5, v3

    goto/16 :goto_1e

    .line 358
    .end local v36    # "obj":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move-object v5, v3

    move-object v13, v9

    move-object v4, v12

    move-object v12, v14

    move-object v7, v15

    move-object/from16 v45, v31

    move-object v15, v2

    move-object v9, v6

    move-object v6, v10

    goto/16 :goto_38

    .line 253
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_2c
    move-object/from16 v36, v1

    :try_start_a
    instance-of v0, v1, Ljava/io/Serializable;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1f

    if-nez v0, :cond_37

    .line 254
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "non serializable \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' on queue \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {v0, v4}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 364
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V

    .line 365
    if-eqz v22, :cond_2d

    if-nez v21, :cond_2d

    .line 366
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 367
    :cond_2d
    iget-boolean v0, v11, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_2f

    .line 368
    if-eqz v21, :cond_2e

    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

    goto :goto_18

    :cond_2e
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

    :goto_18
    const-string v26, ""

    move-object v4, v1

    .end local v1    # "obj":Ljava/lang/Object;
    .restart local v4    # "obj":Ljava/lang/Object;
    move-object/from16 v1, p0

    move-object v5, v2

    .end local v2    # "context":Ljava/io/Serializable;
    .restart local v5    # "context":Ljava/io/Serializable;
    move/from16 v2, v25

    move-object/from16 v40, v3

    move-object v3, v0

    move-object/from16 v41, v4

    move-object/from16 v27, v5

    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "context":Ljava/io/Serializable;
    .restart local v27    # "context":Ljava/io/Serializable;
    .local v41, "obj":Ljava/lang/Object;
    move-wide/from16 v4, v16

    move-object/from16 v42, v6

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .local v42, "prof":Lorg/jpos/util/Profiler;
    move-object/from16 v6, v26

    move-object/from16 v7, v27

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    goto :goto_19

    .line 367
    .end local v27    # "context":Ljava/io/Serializable;
    .end local v41    # "obj":Ljava/lang/Object;
    .end local v42    # "prof":Lorg/jpos/util/Profiler;
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    :cond_2f
    move-object/from16 v41, v1

    move-object/from16 v27, v2

    move-object/from16 v40, v3

    move-object/from16 v42, v6

    .line 373
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v27    # "context":Ljava/io/Serializable;
    .restart local v41    # "obj":Ljava/lang/Object;
    .restart local v42    # "prof":Lorg/jpos/util/Profiler;
    :goto_19
    if-eqz v9, :cond_36

    if-eq v8, v13, :cond_32

    if-eqz v8, :cond_32

    const/4 v7, -0x1

    if-ne v8, v7, :cond_30

    move-object/from16 v1, v42

    .end local v42    # "prof":Lorg/jpos/util/Profiler;
    .local v1, "prof":Lorg/jpos/util/Profiler;
    if-eqz v1, :cond_31

    goto :goto_1a

    .end local v1    # "prof":Lorg/jpos/util/Profiler;
    .restart local v42    # "prof":Lorg/jpos/util/Profiler;
    :cond_30
    move-object/from16 v1, v42

    .end local v42    # "prof":Lorg/jpos/util/Profiler;
    .restart local v1    # "prof":Lorg/jpos/util/Profiler;
    :cond_31
    move-object/from16 v5, v40

    goto/16 :goto_1e

    .end local v1    # "prof":Lorg/jpos/util/Profiler;
    .restart local v42    # "prof":Lorg/jpos/util/Profiler;
    :cond_32
    move-object/from16 v1, v42

    .line 374
    .end local v42    # "prof":Lorg/jpos/util/Profiler;
    .restart local v1    # "prof":Lorg/jpos/util/Profiler;
    :goto_1a
    packed-switch v8, :pswitch_data_4

    goto :goto_1b

    .line 376
    :pswitch_c
    invoke-virtual {v9, v14}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 377
    goto :goto_1b

    .line 379
    :pswitch_d
    invoke-virtual {v9, v15}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 380
    goto :goto_1b

    .line 382
    :pswitch_e
    invoke-virtual {v9, v10}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 385
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v2

    iget v0, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    iget-object v4, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_33

    .line 386
    invoke-virtual {v9, v12}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 388
    :cond_33
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    .line 390
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->tmInfo()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    if-eqz v1, :cond_34

    .line 391
    invoke-virtual {v1}, Lorg/jpos/util/Profiler;->getElapsedInMillis()J

    move-result-wide v23

    goto :goto_1c

    :cond_34
    nop

    :goto_1c
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v13

    .line 389
    move-object/from16 v5, v40

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v9, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 394
    if-eqz v1, :cond_35

    .line 395
    invoke-virtual {v9, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 397
    :cond_35
    move-object/from16 v2, v27

    .end local v27    # "context":Ljava/io/Serializable;
    .restart local v2    # "context":Ljava/io/Serializable;
    :try_start_c
    invoke-virtual {v11, v2, v9, v1}, Lorg/jpos/transaction/TransactionManager;->freeze(Ljava/io/Serializable;Lorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)Lorg/jpos/util/FrozenLogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_1d

    .line 398
    :catchall_7
    move-exception v0

    .line 399
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 400
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1d
    goto :goto_1e

    .line 373
    .end local v1    # "prof":Lorg/jpos/util/Profiler;
    .end local v2    # "context":Ljava/io/Serializable;
    .restart local v27    # "context":Ljava/io/Serializable;
    .restart local v42    # "prof":Lorg/jpos/util/Profiler;
    :cond_36
    move-object/from16 v2, v27

    move-object/from16 v5, v40

    move-object/from16 v1, v42

    .line 227
    .end local v8    # "action":I
    .end local v21    # "paused":Z
    .end local v22    # "transactionActive":Z
    .end local v27    # "context":Ljava/io/Serializable;
    .end local v41    # "obj":Ljava/lang/Object;
    .end local v42    # "prof":Lorg/jpos/util/Profiler;
    :goto_1e
    move-object v13, v5

    move-object v6, v9

    move/from16 v8, v25

    move-object/from16 v9, v31

    goto/16 :goto_0

    .line 358
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v8    # "action":I
    .restart local v21    # "paused":Z
    .restart local v22    # "transactionActive":Z
    :catchall_8
    move-exception v0

    move-object v1, v6

    move-object v5, v3

    move-object v13, v9

    move-object v6, v10

    move-object v4, v12

    move-object v12, v14

    move-object v7, v15

    move-object/from16 v45, v31

    move-object v9, v1

    move-object v15, v2

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .restart local v1    # "prof":Lorg/jpos/util/Profiler;
    goto/16 :goto_38

    .line 260
    .local v1, "obj":Ljava/lang/Object;
    .restart local v6    # "prof":Lorg/jpos/util/Profiler;
    :cond_37
    move-object/from16 v41, v1

    move-object v1, v6

    move v6, v4

    move v4, v5

    move-object v5, v3

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .local v1, "prof":Lorg/jpos/util/Profiler;
    .restart local v41    # "obj":Ljava/lang/Object;
    move-object/from16 v3, v41

    .end local v41    # "obj":Ljava/lang/Object;
    .local v3, "obj":Ljava/lang/Object;
    :try_start_d
    move-object v0, v3

    check-cast v0, Ljava/io/Serializable;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1e

    move-object v2, v0

    .line 261
    :try_start_e
    instance-of v0, v3, Lorg/jpos/transaction/Pausable;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1d

    if-eqz v0, :cond_3b

    .line 262
    :try_start_f
    move-object v0, v3

    check-cast v0, Lorg/jpos/transaction/Pausable;

    .line 263
    .local v0, "pausable":Lorg/jpos/transaction/Pausable;
    invoke-interface {v0}, Lorg/jpos/transaction/Pausable;->getPausedTransaction()Lorg/jpos/transaction/PausedTransaction;

    move-result-object v26

    .line 264
    .local v26, "pt":Lorg/jpos/transaction/PausedTransaction;
    if-eqz v26, :cond_3a

    .line 265
    invoke-virtual/range {v26 .. v26}, Lorg/jpos/transaction/PausedTransaction;->cancelExpirationMonitor()V

    .line 266
    invoke-virtual/range {v26 .. v26}, Lorg/jpos/transaction/PausedTransaction;->id()J

    move-result-wide v27

    move-wide/from16 v16, v27

    .line 267
    invoke-virtual/range {v26 .. v26}, Lorg/jpos/transaction/PausedTransaction;->members()Ljava/util/List;

    move-result-object v27

    move-object/from16 v18, v27

    .line 268
    invoke-virtual/range {v26 .. v26}, Lorg/jpos/transaction/PausedTransaction;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v19, v27

    .line 269
    invoke-virtual/range {v26 .. v26}, Lorg/jpos/transaction/PausedTransaction;->isAborting()Z

    move-result v27

    move/from16 v20, v27

    .line 270
    invoke-virtual/range {v26 .. v26}, Lorg/jpos/transaction/PausedTransaction;->getLogEvent()Lorg/jpos/util/LogEvent;

    move-result-object v27

    move-object/from16 v9, v27

    .line 271
    invoke-virtual/range {v26 .. v26}, Lorg/jpos/transaction/PausedTransaction;->getProfiler()Lorg/jpos/util/Profiler;

    move-result-object v27

    move-object/from16 v1, v27

    .line 272
    iget-object v4, v11, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    if-eqz v4, :cond_38

    if-eqz v1, :cond_38

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lorg/jpos/transaction/PausedTransaction;->getParticipant()Lorg/jpos/transaction/TransactionParticipant;

    move-result-object v7

    invoke-direct {v11, v7}, Lorg/jpos/transaction/TransactionManager;->getName(Lorg/jpos/transaction/TransactionParticipant;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-resume"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    move-object/from16 v27, v14

    :try_start_10
    invoke-virtual {v1}, Lorg/jpos/util/Profiler;->getPartialInMillis()J

    move-result-wide v13

    invoke-virtual {v4, v6, v13, v14}, Lorg/jpos/util/Metrics;->record(Ljava/lang/String;J)V

    goto :goto_1f

    .line 272
    :cond_38
    move-object/from16 v27, v14

    .line 274
    :goto_1f
    if-eqz v1, :cond_39

    .line 275
    invoke-virtual {v1}, Lorg/jpos/util/Profiler;->reenable()V

    .line 276
    :cond_39
    iget-object v4, v11, Lorg/jpos/transaction/TransactionManager;->pausedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object v4, v1

    move-object v6, v9

    goto :goto_20

    .line 358
    .end local v0    # "pausable":Lorg/jpos/transaction/Pausable;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    :catchall_9
    move-exception v0

    move-object v13, v9

    move-object v6, v10

    move-object v4, v12

    move-object v7, v15

    move-object/from16 v12, v27

    goto :goto_21

    .line 264
    .restart local v0    # "pausable":Lorg/jpos/transaction/Pausable;
    .restart local v3    # "obj":Ljava/lang/Object;
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    :cond_3a
    move-object/from16 v27, v14

    move-object v4, v1

    move-object v6, v9

    .line 278
    .end local v0    # "pausable":Lorg/jpos/transaction/Pausable;
    .end local v1    # "prof":Lorg/jpos/util/Profiler;
    .end local v9    # "evt":Lorg/jpos/util/LogEvent;
    .local v4, "prof":Lorg/jpos/util/Profiler;
    .local v6, "evt":Lorg/jpos/util/LogEvent;
    :goto_20
    move-object v9, v4

    move-object v13, v6

    goto :goto_22

    .line 358
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v6    # "evt":Lorg/jpos/util/LogEvent;
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .restart local v1    # "prof":Lorg/jpos/util/Profiler;
    .restart local v9    # "evt":Lorg/jpos/util/LogEvent;
    :catchall_a
    move-exception v0

    move-object v13, v9

    move-object v6, v10

    move-object v4, v12

    move-object v12, v14

    move-object v7, v15

    :goto_21
    move-object/from16 v45, v31

    move-object v9, v1

    move-object v15, v2

    goto/16 :goto_38

    .line 279
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_3b
    move-object/from16 v27, v14

    const/16 v26, 0x0

    move-object v13, v9

    move-object v9, v1

    .line 281
    .end local v1    # "prof":Lorg/jpos/util/Profiler;
    .local v9, "prof":Lorg/jpos/util/Profiler;
    .local v13, "evt":Lorg/jpos/util/LogEvent;
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    :goto_22
    const-string v0, "$RETRY_QUEUE"

    const-string v1, ""

    if-nez v26, :cond_46

    .line 282
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getActiveTransactions()I

    move-result v4

    move v14, v4

    .line 283
    .local v14, "running":I
    iget v4, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    if-lez v4, :cond_45

    if-lt v14, v4, :cond_45

    .line 284
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": emergency retry, running-sessions="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", max-active-sessions="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-virtual {v1, v4}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 289
    iget-object v1, v11, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    iget-wide v6, v11, Lorg/jpos/transaction/TransactionManager;->retryTimeout:J

    invoke-interface {v1, v0, v3, v6, v7}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->checkRetryTask()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    .line 364
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V

    .line 365
    if-eqz v22, :cond_3c

    if-nez v21, :cond_3c

    .line 366
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 367
    :cond_3c
    iget-boolean v0, v11, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_3e

    .line 368
    if-eqz v21, :cond_3d

    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

    goto :goto_23

    :cond_3d
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

    :goto_23
    const-string v6, ""

    move-object/from16 v1, p0

    move-object v4, v2

    .end local v2    # "context":Ljava/io/Serializable;
    .local v4, "context":Ljava/io/Serializable;
    move/from16 v2, v25

    move-object/from16 v30, v3

    .end local v3    # "obj":Ljava/lang/Object;
    .local v30, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object/from16 v32, v4

    move-object v7, v5

    move/from16 v28, v14

    const/4 v14, 0x0

    .end local v4    # "context":Ljava/io/Serializable;
    .end local v14    # "running":I
    .local v28, "running":I
    .local v32, "context":Ljava/io/Serializable;
    move-wide/from16 v4, v16

    const/4 v14, 0x2

    move-object/from16 v43, v7

    const/4 v14, -0x1

    move-object/from16 v7, v32

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    goto :goto_24

    .line 367
    .end local v28    # "running":I
    .end local v30    # "obj":Ljava/lang/Object;
    .end local v32    # "context":Ljava/io/Serializable;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v3    # "obj":Ljava/lang/Object;
    .restart local v14    # "running":I
    :cond_3e
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v43, v5

    move/from16 v28, v14

    const/4 v14, -0x1

    .line 373
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v14    # "running":I
    .restart local v28    # "running":I
    .restart local v30    # "obj":Ljava/lang/Object;
    .restart local v32    # "context":Ljava/io/Serializable;
    :goto_24
    if-eqz v13, :cond_44

    const/4 v1, 0x1

    if-eq v8, v1, :cond_40

    if-eqz v8, :cond_40

    if-ne v8, v14, :cond_3f

    if-eqz v9, :cond_3f

    goto :goto_25

    :cond_3f
    move-object/from16 v7, v27

    move-object/from16 v6, v43

    goto/16 :goto_29

    .line 374
    :cond_40
    :goto_25
    packed-switch v8, :pswitch_data_5

    move-object/from16 v7, v27

    goto :goto_26

    .line 376
    :pswitch_f
    move-object/from16 v7, v27

    invoke-virtual {v13, v7}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 377
    goto :goto_26

    .line 379
    :pswitch_10
    move-object/from16 v7, v27

    invoke-virtual {v13, v15}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 380
    goto :goto_26

    .line 382
    :pswitch_11
    move-object/from16 v7, v27

    invoke-virtual {v13, v10}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 385
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v0

    iget v2, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    iget-object v3, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_41

    .line 386
    invoke-virtual {v13, v12}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 388
    :cond_41
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 390
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->tmInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-eqz v9, :cond_42

    .line 391
    invoke-virtual {v9}, Lorg/jpos/util/Profiler;->getElapsedInMillis()J

    move-result-wide v23

    goto :goto_27

    :cond_42
    nop

    :goto_27
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 389
    move-object/from16 v6, v43

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v13, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 394
    if-eqz v9, :cond_43

    .line 395
    invoke-virtual {v13, v9}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 397
    :cond_43
    move-object/from16 v5, v32

    .end local v32    # "context":Ljava/io/Serializable;
    .restart local v5    # "context":Ljava/io/Serializable;
    :try_start_12
    invoke-virtual {v11, v5, v13, v9}, Lorg/jpos/transaction/TransactionManager;->freeze(Ljava/io/Serializable;Lorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)Lorg/jpos/util/FrozenLogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    goto :goto_28

    .line 398
    :catchall_b
    move-exception v0

    .line 399
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 400
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_28
    goto :goto_29

    .line 373
    .end local v5    # "context":Ljava/io/Serializable;
    .restart local v32    # "context":Ljava/io/Serializable;
    :cond_44
    move-object/from16 v7, v27

    move-object/from16 v5, v32

    move-object/from16 v6, v43

    .line 227
    .end local v8    # "action":I
    .end local v9    # "prof":Lorg/jpos/util/Profiler;
    .end local v21    # "paused":Z
    .end local v22    # "transactionActive":Z
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v28    # "running":I
    .end local v30    # "obj":Ljava/lang/Object;
    .end local v32    # "context":Ljava/io/Serializable;
    :goto_29
    move-object v14, v7

    move/from16 v8, v25

    move-object/from16 v9, v31

    move-object/from16 v53, v13

    move-object v13, v6

    move-object/from16 v6, v53

    goto/16 :goto_0

    .line 283
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v3    # "obj":Ljava/lang/Object;
    .restart local v8    # "action":I
    .restart local v9    # "prof":Lorg/jpos/util/Profiler;
    .restart local v14    # "running":I
    .restart local v21    # "paused":Z
    .restart local v22    # "transactionActive":Z
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    :cond_45
    move-object/from16 v30, v3

    move-object v6, v5

    move/from16 v28, v14

    move-object/from16 v7, v27

    const/4 v14, -0x1

    move-object v5, v2

    .line 293
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v14    # "running":I
    .restart local v5    # "context":Ljava/io/Serializable;
    .restart local v28    # "running":I
    .restart local v30    # "obj":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 294
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->nextId()J

    move-result-wide v2

    move-wide/from16 v16, v2

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v2

    .line 296
    invoke-virtual {v11, v1}, Lorg/jpos/transaction/TransactionManager;->getParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v19, v2

    .line 297
    iget-object v2, v11, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    move-wide/from16 v3, v16

    goto :goto_2a

    .line 358
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v28    # "running":I
    .end local v30    # "obj":Ljava/lang/Object;
    :catchall_c
    move-exception v0

    move-object v4, v12

    move-object/from16 v45, v31

    move-object v12, v7

    move-object v7, v15

    move-object v15, v5

    move-object v5, v6

    move-object v6, v10

    goto/16 :goto_38

    .end local v5    # "context":Ljava/io/Serializable;
    .restart local v2    # "context":Ljava/io/Serializable;
    :catchall_d
    move-exception v0

    move-object v6, v5

    move-object v5, v2

    move-object v4, v12

    move-object v7, v15

    move-object/from16 v12, v27

    move-object/from16 v45, v31

    move-object v15, v5

    move-object v5, v6

    move-object v6, v10

    .end local v2    # "context":Ljava/io/Serializable;
    .restart local v5    # "context":Ljava/io/Serializable;
    goto/16 :goto_38

    .line 281
    .end local v5    # "context":Ljava/io/Serializable;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v3    # "obj":Ljava/lang/Object;
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    :cond_46
    move-object/from16 v30, v3

    move-object v6, v5

    move-object/from16 v7, v27

    const/4 v14, -0x1

    move-object v5, v2

    .end local v2    # "context":Ljava/io/Serializable;
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local v5    # "context":Ljava/io/Serializable;
    .restart local v30    # "obj":Ljava/lang/Object;
    move-wide/from16 v3, v16

    .line 299
    .end local v16    # "id":J
    .local v3, "id":J
    :goto_2a
    const/16 v22, 0x1

    .line 300
    :try_start_14
    iget-boolean v2, v11, Lorg/jpos/transaction/TransactionManager;->debug:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1c

    if-eqz v2, :cond_4b

    .line 301
    if-nez v13, :cond_48

    .line 302
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    const-string v14, "debug"

    move-object/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    move-object/from16 v32, v6

    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v26, :cond_47

    const-string v6, " [resuming]"

    goto :goto_2b

    :cond_47
    move-object/from16 v6, v16

    :goto_2b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v2, v14, v1}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    move-object v6, v1

    .line 307
    .end local v13    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v6    # "evt":Lorg/jpos/util/LogEvent;
    :try_start_17
    iget-boolean v1, v11, Lorg/jpos/transaction/TransactionManager;->debugContext:Z

    if-eqz v1, :cond_49

    .line 308
    invoke-virtual {v6, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_2c

    .line 358
    .end local v6    # "evt":Lorg/jpos/util/LogEvent;
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v30    # "obj":Ljava/lang/Object;
    .restart local v13    # "evt":Lorg/jpos/util/LogEvent;
    :catchall_e
    move-exception v0

    move-wide/from16 v16, v3

    move-object v6, v10

    move-object v4, v12

    move-object/from16 v45, v31

    move-object v12, v7

    move-object v7, v15

    move-object v15, v5

    move-object/from16 v5, v32

    goto/16 :goto_38

    :catchall_f
    move-exception v0

    move-wide/from16 v16, v3

    move-object v4, v12

    move-object/from16 v45, v31

    move-object v12, v7

    move-object v7, v15

    move-object v15, v5

    move-object v5, v6

    move-object v6, v10

    goto/16 :goto_38

    .line 301
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .restart local v30    # "obj":Ljava/lang/Object;
    :cond_48
    move-object/from16 v32, v6

    move-object v6, v13

    .line 311
    .end local v13    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v6    # "evt":Lorg/jpos/util/LogEvent;
    :cond_49
    :goto_2c
    if-nez v9, :cond_4a

    .line 312
    new-instance v1, Lorg/jpos/util/Profiler;

    invoke-direct {v1}, Lorg/jpos/util/Profiler;-><init>()V

    move-object v13, v1

    move-object v14, v6

    .end local v9    # "prof":Lorg/jpos/util/Profiler;
    .restart local v1    # "prof":Lorg/jpos/util/Profiler;
    goto :goto_2d

    .line 314
    .end local v1    # "prof":Lorg/jpos/util/Profiler;
    .restart local v9    # "prof":Lorg/jpos/util/Profiler;
    :cond_4a
    const-string v1, "resume"

    invoke-virtual {v9, v1}, Lorg/jpos/util/Profiler;->checkPoint(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    move-object v14, v6

    move-object v13, v9

    goto :goto_2d

    .line 358
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v30    # "obj":Ljava/lang/Object;
    :catchall_10
    move-exception v0

    move-wide/from16 v16, v3

    move-object v13, v6

    move-object v6, v10

    move-object v4, v12

    move-object/from16 v45, v31

    move-object v12, v7

    move-object v7, v15

    move-object v15, v5

    move-object/from16 v5, v32

    goto/16 :goto_38

    .line 300
    .end local v6    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v13    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .restart local v30    # "obj":Ljava/lang/Object;
    :cond_4b
    move-object/from16 v32, v6

    move-object v14, v13

    move-object v13, v9

    .line 316
    .end local v9    # "prof":Lorg/jpos/util/Profiler;
    .local v13, "prof":Lorg/jpos/util/Profiler;
    .local v14, "evt":Lorg/jpos/util/LogEvent;
    :goto_2d
    :try_start_18
    sget-object v1, Lorg/jpos/transaction/TransactionManager;->PREPARING:Ljava/lang/Integer;

    invoke-virtual {v11, v3, v4, v5, v1}, Lorg/jpos/transaction/TransactionManager;->snapshot(JLjava/io/Serializable;Ljava/lang/Integer;)V

    .line 317
    invoke-direct {v11, v3, v4, v5}, Lorg/jpos/transaction/TransactionManager;->setThreadLocal(JLjava/io/Serializable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1b

    .line 318
    move-object/from16 v1, p0

    move/from16 v2, v25

    move-wide/from16 v16, v3

    .end local v3    # "id":J
    .restart local v16    # "id":J
    move-object v9, v5

    .end local v5    # "context":Ljava/io/Serializable;
    .local v9, "context":Ljava/io/Serializable;
    move-object/from16 v44, v32

    move-object/from16 v6, v18

    move-object/from16 v27, v12

    move-object v12, v7

    move-object/from16 v7, v19

    move/from16 v28, v8

    .end local v8    # "action":I
    .local v28, "action":I
    move/from16 v8, v20

    move-object/from16 v45, v31

    move-object/from16 v31, v15

    move-object v15, v9

    .end local v9    # "context":Ljava/io/Serializable;
    .end local v31    # "thread":Ljava/lang/Thread;
    .local v15, "context":Ljava/io/Serializable;
    .local v45, "thread":Ljava/lang/Thread;
    move-object v9, v14

    move-object/from16 v46, v10

    move-object v10, v13

    :try_start_19
    invoke-virtual/range {v1 .. v10}, Lorg/jpos/transaction/TransactionManager;->prepare(IJLjava/io/Serializable;Ljava/util/List;Ljava/util/Iterator;ZLorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)I

    move-result v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1a

    move v10, v1

    .line 319
    .end local v28    # "action":I
    .local v10, "action":I
    :try_start_1a
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_19

    .line 320
    packed-switch v10, :pswitch_data_6

    :pswitch_12
    move-wide/from16 v49, v16

    .end local v16    # "id":J
    .local v49, "id":J
    goto/16 :goto_2e

    .line 322
    .end local v49    # "id":J
    .restart local v16    # "id":J
    :pswitch_13
    const/16 v21, 0x1

    .line 323
    const-wide/16 v0, 0x3e8

    move-wide/from16 v8, v16

    .end local v16    # "id":J
    .local v8, "id":J
    :try_start_1b
    rem-long v3, v8, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_4c

    .line 324
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 325
    :cond_4c
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->pausedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 326
    move-wide/from16 v49, v8

    goto/16 :goto_2e

    .line 343
    .end local v8    # "id":J
    .restart local v16    # "id":J
    :pswitch_14
    move-wide/from16 v8, v16

    .end local v16    # "id":J
    .restart local v8    # "id":J
    iget-object v1, v11, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v1, v0, v15}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->checkRetryTask()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    .line 345
    move-wide/from16 v49, v8

    goto/16 :goto_2e

    .line 358
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v30    # "obj":Ljava/lang/Object;
    :catchall_11
    move-exception v0

    move-wide/from16 v16, v8

    move v8, v10

    move-object v9, v13

    move-object v13, v14

    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    goto/16 :goto_38

    .line 328
    .end local v8    # "id":J
    .restart local v16    # "id":J
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .restart local v30    # "obj":Ljava/lang/Object;
    :pswitch_15
    move-wide/from16 v8, v16

    .end local v16    # "id":J
    .restart local v8    # "id":J
    :try_start_1c
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4d

    .line 329
    sget-object v0, Lorg/jpos/transaction/TransactionManager;->COMMITTING:Ljava/lang/Integer;

    invoke-virtual {v11, v8, v9, v0}, Lorg/jpos/transaction/TransactionManager;->setState(JLjava/lang/Integer;)V

    .line 330
    invoke-direct {v11, v8, v9, v15}, Lorg/jpos/transaction/TransactionManager;->setThreadLocal(JLjava/io/Serializable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    .line 331
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-wide v3, v8

    move-object v5, v15

    move-object/from16 v6, v18

    move-wide/from16 v47, v8

    .end local v8    # "id":J
    .local v47, "id":J
    move-object v8, v14

    move-object v9, v13

    :try_start_1d
    invoke-virtual/range {v1 .. v9}, Lorg/jpos/transaction/TransactionManager;->commit(IJLjava/io/Serializable;Ljava/util/List;ZLorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)V

    .line 332
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    move-wide/from16 v49, v47

    goto/16 :goto_2e

    .line 358
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v30    # "obj":Ljava/lang/Object;
    :catchall_12
    move-exception v0

    move v8, v10

    move-object v9, v13

    move-object v13, v14

    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    move-wide/from16 v16, v47

    goto/16 :goto_38

    .line 328
    .end local v47    # "id":J
    .restart local v8    # "id":J
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .restart local v30    # "obj":Ljava/lang/Object;
    :cond_4d
    move-wide/from16 v47, v8

    .end local v8    # "id":J
    .restart local v47    # "id":J
    move-wide/from16 v49, v47

    goto/16 :goto_2e

    .line 358
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v30    # "obj":Ljava/lang/Object;
    .end local v47    # "id":J
    .restart local v8    # "id":J
    :catchall_13
    move-exception v0

    move-wide/from16 v47, v8

    move v8, v10

    move-object v9, v13

    move-object v13, v14

    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    move-wide/from16 v16, v47

    .end local v8    # "id":J
    .restart local v47    # "id":J
    goto/16 :goto_38

    .line 336
    .end local v47    # "id":J
    .restart local v16    # "id":J
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .restart local v30    # "obj":Ljava/lang/Object;
    :pswitch_16
    move-wide/from16 v47, v16

    .end local v16    # "id":J
    .restart local v47    # "id":J
    :try_start_1e
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_16

    if-lez v0, :cond_4e

    .line 337
    move-wide/from16 v8, v47

    .end local v47    # "id":J
    .restart local v8    # "id":J
    :try_start_1f
    invoke-direct {v11, v8, v9, v15}, Lorg/jpos/transaction/TransactionManager;->setThreadLocal(JLjava/io/Serializable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    .line 338
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-wide v3, v8

    move-object v5, v15

    move-object/from16 v6, v18

    move-wide/from16 v49, v8

    .end local v8    # "id":J
    .restart local v49    # "id":J
    move-object v8, v14

    move-object v9, v13

    :try_start_20
    invoke-virtual/range {v1 .. v9}, Lorg/jpos/transaction/TransactionManager;->abort(IJLjava/io/Serializable;Ljava/util/List;ZLorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)V

    .line 339
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    goto :goto_2e

    .line 358
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v30    # "obj":Ljava/lang/Object;
    :catchall_14
    move-exception v0

    move v8, v10

    move-object v9, v13

    move-object v13, v14

    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    move-wide/from16 v16, v49

    goto/16 :goto_38

    .end local v49    # "id":J
    .restart local v8    # "id":J
    :catchall_15
    move-exception v0

    move-wide/from16 v49, v8

    move v8, v10

    move-object v9, v13

    move-object v13, v14

    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    move-wide/from16 v16, v49

    .end local v8    # "id":J
    .restart local v49    # "id":J
    goto/16 :goto_38

    .line 336
    .end local v49    # "id":J
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .restart local v30    # "obj":Ljava/lang/Object;
    .restart local v47    # "id":J
    :cond_4e
    move-wide/from16 v49, v47

    .end local v47    # "id":J
    .restart local v49    # "id":J
    goto :goto_2e

    .line 358
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v30    # "obj":Ljava/lang/Object;
    .end local v49    # "id":J
    .restart local v47    # "id":J
    :catchall_16
    move-exception v0

    move-wide/from16 v49, v47

    move v8, v10

    move-object v9, v13

    move-object v13, v14

    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    move-wide/from16 v16, v49

    .end local v47    # "id":J
    .restart local v49    # "id":J
    goto/16 :goto_38

    .line 349
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .restart local v30    # "obj":Ljava/lang/Object;
    :goto_2e
    and-int/lit8 v0, v10, 0x4

    if-nez v0, :cond_50

    .line 350
    const/4 v0, 0x0

    :try_start_21
    sget-object v1, Lorg/jpos/transaction/TransactionManager;->DONE:Ljava/lang/Integer;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_17

    move-wide/from16 v8, v49

    .end local v49    # "id":J
    .restart local v8    # "id":J
    :try_start_22
    invoke-virtual {v11, v8, v9, v0, v1}, Lorg/jpos/transaction/TransactionManager;->snapshot(JLjava/io/Serializable;Ljava/lang/Integer;)V

    .line 351
    iget-wide v0, v11, Lorg/jpos/transaction/TransactionManager;->tail:J

    cmp-long v0, v8, v0

    if-nez v0, :cond_4f

    .line 352
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->checkTail()V

    goto :goto_2f

    .line 354
    :cond_4f
    const/4 v1, 0x0

    invoke-virtual {v11, v8, v9, v1}, Lorg/jpos/transaction/TransactionManager;->purge(JZ)V

    .line 356
    :goto_2f
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    invoke-virtual {v0}, Lorg/jpos/util/TPS;->tick()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    goto :goto_30

    .line 358
    .end local v8    # "id":J
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .end local v30    # "obj":Ljava/lang/Object;
    .restart local v49    # "id":J
    :catchall_17
    move-exception v0

    move-wide/from16 v8, v49

    move-wide/from16 v16, v8

    move v8, v10

    move-object v9, v13

    move-object v13, v14

    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    .end local v49    # "id":J
    .restart local v8    # "id":J
    goto/16 :goto_38

    .line 349
    .end local v8    # "id":J
    .restart local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    .restart local v30    # "obj":Ljava/lang/Object;
    .restart local v49    # "id":J
    :cond_50
    move-wide/from16 v8, v49

    .line 364
    .end local v30    # "obj":Ljava/lang/Object;
    .end local v49    # "id":J
    .restart local v8    # "id":J
    :goto_30
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V

    .line 365
    if-eqz v22, :cond_51

    if-nez v21, :cond_51

    .line 366
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 367
    :cond_51
    iget-boolean v0, v11, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_53

    .line 368
    if-eqz v21, :cond_52

    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

    goto :goto_31

    :cond_52
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

    :goto_31
    move-object v3, v0

    const-string v6, ""

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-wide v4, v8

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    .line 373
    :cond_53
    if-eqz v14, :cond_59

    const/4 v1, 0x1

    if-eq v10, v1, :cond_55

    if-eqz v10, :cond_55

    const/4 v1, -0x1

    if-ne v10, v1, :cond_54

    if-eqz v13, :cond_54

    goto :goto_32

    :cond_54
    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    goto/16 :goto_37

    .line 374
    :cond_55
    :goto_32
    packed-switch v10, :pswitch_data_7

    move-object/from16 v7, v31

    move-object/from16 v6, v46

    goto :goto_33

    .line 376
    :pswitch_17
    invoke-virtual {v14, v12}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 377
    move-object/from16 v7, v31

    move-object/from16 v6, v46

    goto :goto_33

    .line 379
    :pswitch_18
    move-object/from16 v7, v31

    invoke-virtual {v14, v7}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 380
    move-object/from16 v6, v46

    goto :goto_33

    .line 382
    :pswitch_19
    move-object/from16 v7, v31

    move-object/from16 v6, v46

    invoke-virtual {v14, v6}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 385
    :goto_33
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v0

    iget v2, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    iget-object v3, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_56

    .line 386
    move-object/from16 v4, v27

    invoke-virtual {v14, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_34

    .line 385
    :cond_56
    move-object/from16 v4, v27

    .line 388
    :goto_34
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 390
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->tmInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-eqz v13, :cond_57

    .line 391
    invoke-virtual {v13}, Lorg/jpos/util/Profiler;->getElapsedInMillis()J

    move-result-wide v23

    goto :goto_35

    :cond_57
    nop

    :goto_35
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 389
    move-object/from16 v5, v44

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v14, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 394
    if-eqz v13, :cond_58

    .line 395
    invoke-virtual {v14, v13}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 397
    :cond_58
    :try_start_23
    invoke-virtual {v11, v15, v14, v13}, Lorg/jpos/transaction/TransactionManager;->freeze(Ljava/io/Serializable;Lorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)Lorg/jpos/util/FrozenLogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_18

    goto :goto_36

    .line 398
    :catchall_18
    move-exception v0

    .line 399
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 400
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_36
    goto :goto_37

    .line 373
    :cond_59
    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    .line 403
    .end local v10    # "action":I
    .end local v15    # "context":Ljava/io/Serializable;
    .end local v26    # "pt":Lorg/jpos/transaction/PausedTransaction;
    :goto_37
    move-object v10, v6

    move-wide/from16 v16, v8

    move-object v9, v13

    move-object v13, v14

    move-object v6, v5

    move-object v14, v7

    move-object v7, v4

    goto/16 :goto_41

    .line 358
    .end local v8    # "id":J
    .restart local v10    # "action":I
    .restart local v15    # "context":Ljava/io/Serializable;
    .restart local v16    # "id":J
    :catchall_19
    move-exception v0

    move-wide/from16 v8, v16

    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    move v8, v10

    move-object v9, v13

    move-object v13, v14

    .end local v16    # "id":J
    .restart local v8    # "id":J
    goto/16 :goto_38

    .end local v8    # "id":J
    .end local v10    # "action":I
    .restart local v16    # "id":J
    .restart local v28    # "action":I
    :catchall_1a
    move-exception v0

    move-wide/from16 v8, v16

    move-object/from16 v4, v27

    move-object/from16 v7, v31

    move-object/from16 v5, v44

    move-object/from16 v6, v46

    move-object v9, v13

    move-object v13, v14

    move/from16 v8, v28

    .end local v16    # "id":J
    .restart local v8    # "id":J
    goto/16 :goto_38

    .end local v15    # "context":Ljava/io/Serializable;
    .end local v28    # "action":I
    .end local v45    # "thread":Ljava/lang/Thread;
    .restart local v3    # "id":J
    .restart local v5    # "context":Ljava/io/Serializable;
    .local v8, "action":I
    .restart local v31    # "thread":Ljava/lang/Thread;
    :catchall_1b
    move-exception v0

    move/from16 v28, v8

    move-object v6, v10

    move-object/from16 v45, v31

    move-wide v8, v3

    move-object v4, v12

    move-object v12, v7

    move-object v7, v15

    move-object v15, v5

    move-object/from16 v5, v32

    move-wide/from16 v16, v8

    move-object v9, v13

    move-object v13, v14

    move/from16 v8, v28

    .end local v3    # "id":J
    .end local v5    # "context":Ljava/io/Serializable;
    .end local v31    # "thread":Ljava/lang/Thread;
    .local v8, "id":J
    .restart local v15    # "context":Ljava/io/Serializable;
    .restart local v28    # "action":I
    .restart local v45    # "thread":Ljava/lang/Thread;
    goto/16 :goto_38

    .end local v14    # "evt":Lorg/jpos/util/LogEvent;
    .end local v15    # "context":Ljava/io/Serializable;
    .end local v28    # "action":I
    .end local v45    # "thread":Ljava/lang/Thread;
    .restart local v3    # "id":J
    .restart local v5    # "context":Ljava/io/Serializable;
    .local v8, "action":I
    .local v9, "prof":Lorg/jpos/util/Profiler;
    .local v13, "evt":Lorg/jpos/util/LogEvent;
    .restart local v31    # "thread":Ljava/lang/Thread;
    :catchall_1c
    move-exception v0

    move-wide/from16 v16, v3

    move/from16 v28, v8

    move-object v4, v12

    move-object/from16 v45, v31

    move-object v12, v7

    move-object v7, v15

    move-object v15, v5

    move-object v5, v6

    move-object v6, v10

    .end local v3    # "id":J
    .end local v5    # "context":Ljava/io/Serializable;
    .end local v8    # "action":I
    .end local v31    # "thread":Ljava/lang/Thread;
    .restart local v15    # "context":Ljava/io/Serializable;
    .restart local v16    # "id":J
    .restart local v28    # "action":I
    .restart local v45    # "thread":Ljava/lang/Thread;
    goto/16 :goto_38

    .end local v13    # "evt":Lorg/jpos/util/LogEvent;
    .end local v15    # "context":Ljava/io/Serializable;
    .end local v28    # "action":I
    .end local v45    # "thread":Ljava/lang/Thread;
    .restart local v1    # "prof":Lorg/jpos/util/Profiler;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v8    # "action":I
    .local v9, "evt":Lorg/jpos/util/LogEvent;
    .restart local v31    # "thread":Ljava/lang/Thread;
    :catchall_1d
    move-exception v0

    move/from16 v28, v8

    move-object v6, v10

    move-object v4, v12

    move-object v12, v14

    move-object v7, v15

    move-object/from16 v45, v31

    move-object v15, v2

    move-object v13, v9

    move-object v9, v1

    .end local v2    # "context":Ljava/io/Serializable;
    .end local v8    # "action":I
    .end local v31    # "thread":Ljava/lang/Thread;
    .restart local v15    # "context":Ljava/io/Serializable;
    .restart local v28    # "action":I
    .restart local v45    # "thread":Ljava/lang/Thread;
    goto/16 :goto_38

    .end local v15    # "context":Ljava/io/Serializable;
    .end local v28    # "action":I
    .end local v45    # "thread":Ljava/lang/Thread;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v8    # "action":I
    .restart local v31    # "thread":Ljava/lang/Thread;
    :catchall_1e
    move-exception v0

    move/from16 v28, v8

    move-object v6, v10

    move-object v4, v12

    move-object v12, v14

    move-object v7, v15

    move-object/from16 v45, v31

    move-object v15, v2

    move-object v13, v9

    move-object v9, v1

    .end local v8    # "action":I
    .end local v31    # "thread":Ljava/lang/Thread;
    .restart local v28    # "action":I
    .restart local v45    # "thread":Ljava/lang/Thread;
    goto/16 :goto_38

    .end local v1    # "prof":Lorg/jpos/util/Profiler;
    .end local v28    # "action":I
    .end local v45    # "thread":Ljava/lang/Thread;
    .local v6, "prof":Lorg/jpos/util/Profiler;
    .restart local v8    # "action":I
    .restart local v31    # "thread":Ljava/lang/Thread;
    :catchall_1f
    move-exception v0

    move-object v5, v3

    move-object v1, v6

    move/from16 v28, v8

    move-object v6, v10

    move-object v4, v12

    move-object v12, v14

    move-object v7, v15

    move-object/from16 v45, v31

    move-object v15, v2

    move-object v13, v9

    move-object v9, v1

    .end local v6    # "prof":Lorg/jpos/util/Profiler;
    .end local v8    # "action":I
    .end local v31    # "thread":Ljava/lang/Thread;
    .restart local v1    # "prof":Lorg/jpos/util/Profiler;
    .restart local v28    # "action":I
    .restart local v45    # "thread":Ljava/lang/Thread;
    goto/16 :goto_38

    .end local v2    # "context":Ljava/io/Serializable;
    .end local v25    # "session":I
    .end local v28    # "action":I
    .end local v45    # "thread":Ljava/lang/Thread;
    .local v1, "context":Ljava/io/Serializable;
    .local v4, "prof":Lorg/jpos/util/Profiler;
    .restart local v7    # "action":I
    .local v8, "session":I
    .restart local v31    # "thread":Ljava/lang/Thread;
    :catchall_20
    move-exception v0

    move-object v5, v2

    move/from16 v28, v7

    move/from16 v25, v8

    move-object v6, v10

    move-object v7, v15

    move-object/from16 v45, v31

    move-object v2, v1

    move-object v1, v4

    move-object v4, v12

    move-object v12, v14

    move-object v15, v2

    move-object v13, v9

    move/from16 v8, v28

    move-object v9, v1

    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v7    # "action":I
    .end local v8    # "session":I
    .end local v31    # "thread":Ljava/lang/Thread;
    .local v1, "prof":Lorg/jpos/util/Profiler;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v25    # "session":I
    .restart local v28    # "action":I
    .restart local v45    # "thread":Ljava/lang/Thread;
    goto :goto_38

    .end local v1    # "prof":Lorg/jpos/util/Profiler;
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v25    # "session":I
    .end local v28    # "action":I
    .end local v45    # "thread":Ljava/lang/Thread;
    .restart local v8    # "session":I
    .local v26, "context":Ljava/io/Serializable;
    .restart local v29    # "prof":Lorg/jpos/util/Profiler;
    .local v30, "action":I
    .restart local v31    # "thread":Ljava/lang/Thread;
    :catchall_21
    move-exception v0

    move-object v6, v10

    move-object v4, v12

    move-object v12, v14

    move-object v7, v15

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    move-object/from16 v1, v29

    move/from16 v28, v30

    move-object/from16 v45, v31

    move/from16 v25, v8

    move-object v15, v2

    move-object v13, v9

    move/from16 v8, v28

    move-object v9, v1

    .end local v8    # "session":I
    .end local v26    # "context":Ljava/io/Serializable;
    .end local v29    # "prof":Lorg/jpos/util/Profiler;
    .end local v30    # "action":I
    .end local v31    # "thread":Ljava/lang/Thread;
    .restart local v1    # "prof":Lorg/jpos/util/Profiler;
    .restart local v2    # "context":Ljava/io/Serializable;
    .restart local v25    # "session":I
    .restart local v28    # "action":I
    .restart local v45    # "thread":Ljava/lang/Thread;
    goto :goto_38

    .end local v1    # "prof":Lorg/jpos/util/Profiler;
    .end local v2    # "context":Ljava/io/Serializable;
    .end local v28    # "action":I
    .end local v45    # "thread":Ljava/lang/Thread;
    .restart local v4    # "prof":Lorg/jpos/util/Profiler;
    .local v5, "action":I
    .local v6, "evt":Lorg/jpos/util/LogEvent;
    .restart local v8    # "session":I
    .local v9, "thread":Ljava/lang/Thread;
    .local v25, "context":Ljava/io/Serializable;
    :catchall_22
    move-exception v0

    move-object v1, v4

    move/from16 v28, v5

    move-object/from16 v45, v9

    move-object v4, v12

    move-object v5, v13

    move-object v12, v14

    move-object v7, v15

    move-object/from16 v2, v25

    move-object v9, v6

    move/from16 v25, v8

    move-object v6, v10

    move-object v15, v2

    move-object v13, v9

    move/from16 v8, v28

    move-object v9, v1

    .line 359
    .end local v4    # "prof":Lorg/jpos/util/Profiler;
    .end local v5    # "action":I
    .end local v6    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v0    # "t":Ljava/lang/Throwable;
    .local v8, "action":I
    .local v9, "prof":Lorg/jpos/util/Profiler;
    .restart local v13    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v15    # "context":Ljava/io/Serializable;
    .local v25, "session":I
    .restart local v45    # "thread":Ljava/lang/Thread;
    :goto_38
    if-nez v13, :cond_5a

    .line 360
    :try_start_24
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->fatal(Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_23

    goto :goto_39

    .line 364
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_23
    move-exception v0

    move-object/from16 v26, v0

    move-object v10, v6

    move-object v14, v7

    move-object v7, v4

    move-object v6, v5

    goto/16 :goto_42

    .line 362
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_5a
    :try_start_25
    invoke-virtual {v13, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    .line 364
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_39
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V

    .line 365
    if-eqz v22, :cond_5b

    if-nez v21, :cond_5b

    .line 366
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 367
    :cond_5b
    iget-boolean v0, v11, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_5d

    .line 368
    if-eqz v21, :cond_5c

    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

    goto :goto_3a

    :cond_5c
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

    :goto_3a
    move-object v3, v0

    const-string v0, ""

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-object v14, v4

    move-object v10, v5

    move-wide/from16 v4, v16

    move-object/from16 v32, v10

    move-object v10, v6

    move-object v6, v0

    move-object/from16 v27, v14

    move-object v14, v7

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    goto :goto_3b

    .line 367
    :cond_5d
    move-object/from16 v27, v4

    move-object/from16 v32, v5

    move-object v10, v6

    move-object v14, v7

    .line 373
    :goto_3b
    if-eqz v13, :cond_63

    const/4 v1, 0x1

    if-eq v8, v1, :cond_5f

    if-eqz v8, :cond_5f

    const/4 v1, -0x1

    if-ne v8, v1, :cond_5e

    if-eqz v9, :cond_5e

    goto :goto_3c

    :cond_5e
    move-object/from16 v7, v27

    move-object/from16 v6, v32

    goto/16 :goto_41

    .line 374
    :cond_5f
    :goto_3c
    packed-switch v8, :pswitch_data_8

    goto :goto_3d

    .line 376
    :pswitch_1a
    invoke-virtual {v13, v12}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 377
    goto :goto_3d

    .line 379
    :pswitch_1b
    invoke-virtual {v13, v14}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 380
    goto :goto_3d

    .line 382
    :pswitch_1c
    invoke-virtual {v13, v10}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 385
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v0

    iget v2, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    iget-object v3, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_60

    .line 386
    move-object/from16 v7, v27

    invoke-virtual {v13, v7}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_3e

    .line 385
    :cond_60
    move-object/from16 v7, v27

    .line 388
    :goto_3e
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 390
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->tmInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-eqz v9, :cond_61

    .line 391
    invoke-virtual {v9}, Lorg/jpos/util/Profiler;->getElapsedInMillis()J

    move-result-wide v23

    goto :goto_3f

    :cond_61
    nop

    :goto_3f
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 389
    move-object/from16 v6, v32

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v13, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 394
    if-eqz v9, :cond_62

    .line 395
    invoke-virtual {v13, v9}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 397
    :cond_62
    :try_start_26
    invoke-virtual {v11, v15, v13, v9}, Lorg/jpos/transaction/TransactionManager;->freeze(Ljava/io/Serializable;Lorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)Lorg/jpos/util/FrozenLogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_24

    goto :goto_40

    .line 398
    :catchall_24
    move-exception v0

    .line 399
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 400
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_40
    goto :goto_41

    .line 373
    :cond_63
    move-object/from16 v7, v27

    move-object/from16 v6, v32

    .line 403
    .end local v8    # "action":I
    .end local v15    # "context":Ljava/io/Serializable;
    :goto_41
    move-object v15, v14

    move/from16 v8, v25

    move-object/from16 v9, v45

    move-object v14, v12

    move-object v12, v7

    move-object/from16 v53, v13

    move-object v13, v6

    move-object/from16 v6, v53

    goto/16 :goto_0

    .line 364
    .restart local v8    # "action":I
    .restart local v15    # "context":Ljava/io/Serializable;
    :catchall_25
    move-exception v0

    move-object v10, v6

    move-object v14, v7

    move-object v7, v4

    move-object v6, v5

    move-object/from16 v26, v0

    :goto_42
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->removeThreadLocal()V

    .line 365
    if-eqz v22, :cond_64

    if-nez v21, :cond_64

    .line 366
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->activeTransactions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 367
    :cond_64
    iget-boolean v0, v11, Lorg/jpos/transaction/TransactionManager;->hasStatusListeners:Z

    if-eqz v0, :cond_66

    .line 368
    if-eqz v21, :cond_65

    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->PAUSED:Lorg/jpos/transaction/TransactionStatusEvent$State;

    goto :goto_43

    :cond_65
    sget-object v0, Lorg/jpos/transaction/TransactionStatusEvent$State;->DONE:Lorg/jpos/transaction/TransactionStatusEvent$State;

    :goto_43
    move-object v3, v0

    const-string v0, ""

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-wide/from16 v4, v16

    move-object/from16 v51, v6

    move-object v6, v0

    move-object/from16 v52, v7

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lorg/jpos/transaction/TransactionManager;->notifyStatusListeners(ILorg/jpos/transaction/TransactionStatusEvent$State;JLjava/lang/String;Ljava/io/Serializable;)V

    goto :goto_44

    .line 367
    :cond_66
    move-object/from16 v51, v6

    move-object/from16 v52, v7

    .line 373
    :goto_44
    if-eqz v13, :cond_6b

    const/4 v1, 0x1

    if-eq v8, v1, :cond_67

    if-eqz v8, :cond_67

    const/4 v1, -0x1

    if-ne v8, v1, :cond_6b

    if-eqz v9, :cond_6b

    .line 374
    :cond_67
    packed-switch v8, :pswitch_data_9

    goto :goto_45

    .line 376
    :pswitch_1d
    invoke-virtual {v13, v12}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 377
    goto :goto_45

    .line 379
    :pswitch_1e
    invoke-virtual {v13, v14}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 380
    goto :goto_45

    .line 382
    :pswitch_1f
    invoke-virtual {v13, v10}, Lorg/jpos/util/LogEvent;->setTag(Ljava/lang/String;)V

    .line 385
    :goto_45
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getInTransit()J

    move-result-wide v0

    iget v2, v11, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    iget-object v3, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_68

    .line 386
    move-object/from16 v1, v52

    invoke-virtual {v13, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 388
    :cond_68
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 390
    invoke-direct/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->tmInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-eqz v9, :cond_69

    .line 391
    invoke-virtual {v9}, Lorg/jpos/util/Profiler;->getElapsedInMillis()J

    move-result-wide v23

    goto :goto_46

    :cond_69
    nop

    :goto_46
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 389
    move-object/from16 v1, v51

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v13, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 394
    if-eqz v9, :cond_6a

    .line 395
    invoke-virtual {v13, v9}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 397
    :cond_6a
    :try_start_27
    invoke-virtual {v11, v15, v13, v9}, Lorg/jpos/transaction/TransactionManager;->freeze(Ljava/io/Serializable;Lorg/jpos/util/LogEvent;Lorg/jpos/util/Profiler;)Lorg/jpos/util/FrozenLogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_26

    .line 400
    goto :goto_47

    .line 398
    :catchall_26
    move-exception v0

    .line 399
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 402
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_6b
    :goto_47
    throw v26

    .line 227
    .end local v13    # "evt":Lorg/jpos/util/LogEvent;
    .end local v15    # "context":Ljava/io/Serializable;
    .end local v21    # "paused":Z
    .end local v22    # "transactionActive":Z
    .end local v25    # "session":I
    .end local v45    # "thread":Ljava/lang/Thread;
    .restart local v6    # "evt":Lorg/jpos/util/LogEvent;
    .local v8, "session":I
    .local v9, "thread":Ljava/lang/Thread;
    :cond_6c
    move/from16 v25, v8

    move-object/from16 v45, v9

    .line 404
    .end local v8    # "session":I
    .end local v9    # "thread":Ljava/lang/Thread;
    .restart local v25    # "session":I
    .restart local v45    # "thread":Ljava/lang/Thread;
    :goto_48
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->threads:Ljava/util/List;

    move-object/from16 v1, v45

    .end local v45    # "thread":Ljava/lang/Thread;
    .local v1, "thread":Ljava/lang/Thread;
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, v11, Lorg/jpos/transaction/TransactionManager;->activeSessions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 406
    .local v0, "currentActiveSessions":I
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", active sessions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 407
    return-void

    .line 223
    .end local v1    # "thread":Ljava/lang/Thread;
    .end local v16    # "id":J
    .end local v18    # "members":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    .end local v20    # "abort":Z
    .end local v25    # "session":I
    .local v0, "id":J
    .local v2, "session":I
    .local v3, "members":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    .local v5, "abort":Z
    .restart local v9    # "thread":Ljava/lang/Thread;
    :cond_6d
    move-wide/from16 v16, v0

    .end local v0    # "id":J
    .restart local v16    # "id":J
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v0

    const-string v7, "Max sessions reached, new session not created"

    invoke-virtual {v0, v7}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 224
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch -0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_7
    .packed-switch -0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_8
    .packed-switch -0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_9
    .packed-switch -0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 6
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 427
    invoke-super {p0, p1}, Lorg/jpos/q2/QBeanSupport;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 428
    const-string v0, "debug"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->debug:Z

    .line 429
    const-string v2, "debug-context"

    invoke-interface {p1, v2, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->debugContext:Z

    .line 430
    iget-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->debug:Z

    const-string v2, "profiler"

    invoke-interface {p1, v2, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->profiler:Z

    .line 431
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->debugContext:Z

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    iput-boolean v1, p0, Lorg/jpos/transaction/TransactionManager;->debug:Z

    .line 433
    :cond_1
    const-string v0, "recover"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->doRecover:Z

    .line 434
    iget-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->retryInterval:J

    const-string v0, "retry-interval"

    invoke-interface {p1, v0, v2, v3}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->retryInterval:J

    .line 435
    iget-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->retryTimeout:J

    const-string v0, "retry-timeout"

    invoke-interface {p1, v0, v2, v3}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->retryTimeout:J

    .line 436
    iget-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->pauseTimeout:J

    const-string v0, "pause-timeout"

    invoke-interface {p1, v0, v2, v3}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jpos/transaction/TransactionManager;->pauseTimeout:J

    .line 437
    const-string v0, "abort-on-pause-timeout"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->abortOnPauseTimeout:Z

    .line 438
    const/4 v0, 0x0

    const-string v2, "max-active-sessions"

    invoke-interface {p1, v2, v0}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    .line 439
    const-string v0, "sessions"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/transaction/TransactionManager;->sessions:I

    .line 440
    const/4 v2, 0x2

    div-int/2addr v0, v2

    const-string v3, "threshold"

    invoke-interface {p1, v3, v0}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/transaction/TransactionManager;->threshold:I

    .line 441
    iget v0, p0, Lorg/jpos/transaction/TransactionManager;->sessions:I

    const-string v3, "max-sessions"

    invoke-interface {p1, v3, v0}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/transaction/TransactionManager;->maxSessions:I

    .line 442
    iget v3, p0, Lorg/jpos/transaction/TransactionManager;->sessions:I

    if-lt v0, v3, :cond_6

    .line 444
    iget v4, p0, Lorg/jpos/transaction/TransactionManager;->maxActiveSessions:I

    if-lez v4, :cond_4

    .line 445
    if-lt v4, v3, :cond_3

    .line 447
    if-lt v4, v0, :cond_2

    goto :goto_0

    .line 448
    :cond_2
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "max-active-sessions < max-sessions"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_3
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "max-active-sessions < sessions"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_4
    :goto_0
    const-string v0, "call-selector-on-abort"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->callSelectorOnAbort:Z

    .line 451
    iget-boolean v0, p0, Lorg/jpos/transaction/TransactionManager;->profiler:Z

    if-eqz v0, :cond_5

    .line 452
    new-instance v0, Lorg/jpos/util/Metrics;

    new-instance v1, Lorg/HdrHistogram/AtomicHistogram;

    const-wide/32 v3, 0xea60

    const-string v5, "metrics-highest-trackable-value"

    invoke-interface {p1, v5, v3, v4}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v1, v3, v4, v2}, Lorg/HdrHistogram/AtomicHistogram;-><init>(JI)V

    invoke-direct {v0, v1}, Lorg/jpos/util/Metrics;-><init>(Lorg/HdrHistogram/Histogram;)V

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->metrics:Lorg/jpos/util/Metrics;

    .line 453
    :cond_5
    return-void

    .line 443
    :cond_6
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "max-sessions < sessions"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 1064
    iput-boolean p1, p0, Lorg/jpos/transaction/TransactionManager;->debug:Z

    .line 1065
    return-void
.end method

.method public setDebugContext(Z)V
    .locals 0
    .param p1, "debugContext"    # Z

    .line 1074
    iput-boolean p1, p0, Lorg/jpos/transaction/TransactionManager;->debugContext:Z

    .line 1075
    return-void
.end method

.method protected setState(JLjava/lang/Integer;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "state"    # Ljava/lang/Integer;

    .line 914
    const-string v0, "$STATE."

    invoke-virtual {p0, v0, p1, p2}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "stateKey":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    monitor-enter v1

    .line 916
    :try_start_0
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-virtual {p0, v2}, Lorg/jpos/transaction/TransactionManager;->commitOff(Lorg/jpos/space/Space;)V

    .line 917
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-static {v2, v0}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 918
    if-eqz p3, :cond_0

    .line 919
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v2, v0, p3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 920
    :cond_0
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-virtual {p0, v2}, Lorg/jpos/transaction/TransactionManager;->commitOn(Lorg/jpos/space/Space;)V

    .line 921
    monitor-exit v1

    .line 922
    return-void

    .line 921
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected snapshot(JLjava/io/Serializable;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;

    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jpos/transaction/TransactionManager;->snapshot(JLjava/io/Serializable;Ljava/lang/Integer;)V

    .line 897
    return-void
.end method

.method protected snapshot(JLjava/io/Serializable;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "context"    # Ljava/io/Serializable;
    .param p4, "status"    # Ljava/lang/Integer;

    .line 899
    const-string v0, "$CONTEXT."

    invoke-virtual {p0, v0, p1, p2}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "contextKey":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    monitor-enter v1

    .line 901
    :try_start_0
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-virtual {p0, v2}, Lorg/jpos/transaction/TransactionManager;->commitOff(Lorg/jpos/space/Space;)V

    .line 902
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-static {v2, v0}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 903
    if-eqz p3, :cond_0

    .line 904
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v2, v0, p3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 906
    :cond_0
    if-eqz p4, :cond_1

    .line 907
    const-string v2, "$STATE."

    invoke-virtual {p0, v2, p1, p2}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, "stateKey":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v3, v2, p4}, Lorg/jpos/space/Space;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 910
    .end local v2    # "stateKey":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-virtual {p0, v2}, Lorg/jpos/transaction/TransactionManager;->commitOn(Lorg/jpos/space/Space;)V

    .line 911
    monitor-exit v1

    .line 912
    return-void

    .line 911
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startService()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->recover()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/jpos/transaction/TransactionManager;->maxSessions:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->threads:Ljava/util/List;

    .line 129
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lorg/jpos/util/TPS;->stop()V

    .line 131
    :cond_0
    new-instance v0, Lorg/jpos/util/TPS;

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "auto-update-tps"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/jpos/util/TPS;-><init>(Z)V

    iput-object v0, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jpos/transaction/TransactionManager;->sessions:I

    if-ge v0, v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    const-string v1, "$RETRY_QUEUE"

    invoke-interface {v0, v1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->checkRetryTask()V

    .line 138
    :cond_2
    iget v0, p0, Lorg/jpos/transaction/TransactionManager;->maxSessions:I

    iget v1, p0, Lorg/jpos/transaction/TransactionManager;->sessions:I

    if-le v0, v1, :cond_3

    .line 139
    invoke-static {}, Lorg/jpos/util/ConcurrentUtil;->newScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    sput-object v2, Lorg/jpos/transaction/TransactionManager;->loadMonitorExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 140
    new-instance v3, Ljava/lang/Thread;

    new-instance v0, Lorg/jpos/transaction/TransactionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/jpos/transaction/TransactionManager$$ExternalSyntheticLambda0;-><init>(Lorg/jpos/transaction/TransactionManager;)V

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x5

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v2 .. v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 151
    :cond_3
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->isp:Lorg/jpos/space/Space;

    if-eq v0, v1, :cond_4

    .line 152
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;

    invoke-direct {v1, p0}, Lorg/jpos/transaction/TransactionManager$InputQueueMonitor;-><init>(Lorg/jpos/transaction/TransactionManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 154
    :cond_4
    return-void
.end method

.method public stopService()V
    .locals 10

    .line 158
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lorg/jpos/transaction/TransactionManager;->loadMonitorExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->threads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Thread;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Thread;

    .line 162
    .local v0, "tt":[Ljava/lang/Thread;
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->isp:Lorg/jpos/space/Space;

    if-eq v1, v2, :cond_1

    .line 163
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "o":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_1

    .line 164
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->isp:Lorg/jpos/space/Space;

    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    iget-object v3, p0, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 165
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const-wide/32 v4, 0xea60

    if-ge v3, v1, :cond_2

    aget-object v6, v0, v3

    .line 166
    .local v6, "t":Ljava/lang/Thread;
    iget-object v7, p0, Lorg/jpos/transaction/TransactionManager;->iisp:Lorg/jpos/space/Space;

    iget-object v8, p0, Lorg/jpos/transaction/TransactionManager;->queue:Ljava/lang/String;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v8, v9, v4, v5}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 165
    .end local v6    # "t":Ljava/lang/Thread;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 167
    :cond_2
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 169
    .local v3, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 170
    iget-object v6, p0, Lorg/jpos/transaction/TransactionManager;->threads:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_3

    .line 171
    :catch_0
    move-exception v6

    .line 172
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not respond - attempting to interrupt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 167
    .end local v3    # "thread":Ljava/lang/Thread;
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 176
    :cond_3
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->tps:Lorg/jpos/util/TPS;

    invoke-virtual {v1}, Lorg/jpos/util/TPS;->stop()V

    .line 177
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->destroyables:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/util/Destroyable;

    .line 179
    .local v2, "destroyable":Lorg/jpos/util/Destroyable;
    :try_start_1
    invoke-interface {v2}, Lorg/jpos/util/Destroyable;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    goto :goto_5

    .line 180
    :catchall_0
    move-exception v3

    .line 181
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/jpos/transaction/TransactionManager;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 183
    .end local v2    # "destroyable":Lorg/jpos/util/Destroyable;
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_5
    goto :goto_4

    .line 184
    :cond_4
    return-void
.end method

.method protected syncTail()V
    .locals 5

    .line 854
    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    monitor-enter v0

    .line 855
    :try_start_0
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-virtual {p0, v1}, Lorg/jpos/transaction/TransactionManager;->commitOff(Lorg/jpos/space/Space;)V

    .line 856
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    const-string v2, "$TAIL"

    invoke-interface {v1, v2}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    const-string v2, "$TAIL"

    iget-wide v3, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 858
    iget-object v1, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-virtual {p0, v1}, Lorg/jpos/transaction/TransactionManager;->commitOn(Lorg/jpos/space/Space;)V

    .line 859
    monitor-exit v0

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected tailDone()Z
    .locals 4

    .line 877
    iget-wide v0, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    const-string v2, "$STATE."

    invoke-virtual {p0, v2, v0, v1}, Lorg/jpos/transaction/TransactionManager;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "stateKey":Ljava/lang/String;
    sget-object v1, Lorg/jpos/transaction/TransactionManager;->DONE:Ljava/lang/Integer;

    iget-object v2, p0, Lorg/jpos/transaction/TransactionManager;->psp:Lorg/jpos/space/Space;

    invoke-interface {v2, v0}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    iget-wide v1, p0, Lorg/jpos/transaction/TransactionManager;->tail:J

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/jpos/transaction/TransactionManager;->purge(JZ)V

    .line 880
    return v3

    .line 882
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
