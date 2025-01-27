.class public Lio/netty/util/concurrent/DefaultThreadFactory;
.super Ljava/lang/Object;
.source "DefaultThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final poolId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final daemon:Z

.field private final nextId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final prefix:Ljava/lang/String;

.field private final priority:I

.field protected final threadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/DefaultThreadFactory;->poolId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 40
    .local p1, "poolType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;ZI)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 56
    .local p1, "poolType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;ZI)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "daemon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 48
    .local p1, "poolType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;ZI)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ZI)V
    .locals 1
    .param p2, "daemon"    # Z
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;ZI)V"
        }
    .end annotation

    .line 64
    .local p1, "poolType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lio/netty/util/concurrent/DefaultThreadFactory;->toPoolName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;ZI)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "poolName"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;ZI)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "poolName"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;ZI)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "poolName"    # Ljava/lang/String;
    .param p2, "daemon"    # Z

    .line 52
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;ZI)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "poolName"    # Ljava/lang/String;
    .param p2, "daemon"    # Z
    .param p3, "priority"    # I

    .line 100
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 100
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;ZILjava/lang/ThreadGroup;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/lang/ThreadGroup;)V
    .locals 3
    .param p1, "poolName"    # Ljava/lang/String;
    .param p2, "daemon"    # Z
    .param p3, "priority"    # I
    .param p4, "threadGroup"    # Ljava/lang/ThreadGroup;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultThreadFactory;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    const-string v0, "poolName"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    const/16 v0, 0xa

    if-gt p3, v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lio/netty/util/concurrent/DefaultThreadFactory;->poolId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultThreadFactory;->prefix:Ljava/lang/String;

    .line 94
    iput-boolean p2, p0, Lio/netty/util/concurrent/DefaultThreadFactory;->daemon:Z

    .line 95
    iput p3, p0, Lio/netty/util/concurrent/DefaultThreadFactory;->priority:I

    .line 96
    iput-object p4, p0, Lio/netty/util/concurrent/DefaultThreadFactory;->threadGroup:Ljava/lang/ThreadGroup;

    .line 97
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: Thread.MIN_PRIORITY <= priority <= Thread.MAX_PRIORITY)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toPoolName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 68
    .local p0, "poolType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "poolType"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "poolName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 75
    :pswitch_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 73
    :pswitch_1
    const-string v1, "unknown"

    return-object v1

    .line 80
    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 106
    invoke-static {p1}, Lio/netty/util/concurrent/FastThreadLocalRunnable;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/netty/util/concurrent/DefaultThreadFactory;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/util/concurrent/DefaultThreadFactory;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/netty/util/concurrent/DefaultThreadFactory;->newThread(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    .line 108
    .local v0, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    iget-boolean v2, p0, Lio/netty/util/concurrent/DefaultThreadFactory;->daemon:Z

    if-eq v1, v2, :cond_0

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iget v2, p0, Lio/netty/util/concurrent/DefaultThreadFactory;->priority:I

    if-eq v1, v2, :cond_1

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_1
    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 118
    :goto_0
    return-object v0
.end method

.method protected newThread(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .line 122
    new-instance v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultThreadFactory;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-direct {v0, v1, p1, p2}, Lio/netty/util/concurrent/FastThreadLocalThread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
