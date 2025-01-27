.class public Lio/netty/util/concurrent/FastThreadLocalThread;
.super Ljava/lang/Thread;
.source "FastThreadLocalThread.java"


# instance fields
.field private final cleanupFastThreadLocals:Z

.field private threadLocalMap:Lio/netty/util/internal/InternalThreadLocalMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 35
    invoke-static {p1}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;

    .line 40
    invoke-static {p2}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    .line 60
    invoke-static {p2}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .line 65
    invoke-static {p2}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    .line 52
    return-void
.end method

.method public static willCleanupFastThreadLocals(Ljava/lang/Thread;)Z
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;

    .line 98
    instance-of v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    .line 99
    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocalThread;->willCleanupFastThreadLocals()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0
.end method


# virtual methods
.method public final setThreadLocalMap(Lio/netty/util/internal/InternalThreadLocalMap;)V
    .locals 0
    .param p1, "threadLocalMap"    # Lio/netty/util/internal/InternalThreadLocalMap;

    .line 82
    iput-object p1, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap:Lio/netty/util/internal/InternalThreadLocalMap;

    .line 83
    return-void
.end method

.method public final threadLocalMap()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap:Lio/netty/util/internal/InternalThreadLocalMap;

    return-object v0
.end method

.method public willCleanupFastThreadLocals()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lio/netty/util/concurrent/FastThreadLocalThread;->cleanupFastThreadLocals:Z

    return v0
.end method
