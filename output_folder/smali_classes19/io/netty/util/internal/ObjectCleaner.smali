.class public final Lio/netty/util/internal/ObjectCleaner;
.super Ljava/lang/Object;
.source "ObjectCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;
    }
.end annotation


# static fields
.field private static final CLEANER_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final CLEANER_TASK:Ljava/lang/Runnable;

.field static final CLEANER_THREAD_NAME:Ljava/lang/String;

.field private static final LIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFERENCE_QUEUE_POLL_TIMEOUT_MS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    nop

    .line 36
    const-string v0, "io.netty.util.internal.ObjectCleaner.refQueuePollTimeout"

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1f4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/netty/util/internal/ObjectCleaner;->REFERENCE_QUEUE_POLL_TIMEOUT_MS:I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/netty/util/internal/ObjectCleaner;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/ObjectCleaner;->CLEANER_THREAD_NAME:Ljava/lang/String;

    .line 41
    new-instance v0, Lio/netty/util/internal/ConcurrentSet;

    invoke-direct {v0}, Lio/netty/util/internal/ConcurrentSet;-><init>()V

    sput-object v0, Lio/netty/util/internal/ObjectCleaner;->LIVE_SET:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lio/netty/util/internal/ObjectCleaner;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/netty/util/internal/ObjectCleaner;->CLEANER_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Lio/netty/util/internal/ObjectCleaner$1;

    invoke-direct {v0}, Lio/netty/util/internal/ObjectCleaner$1;-><init>()V

    sput-object v0, Lio/netty/util/internal/ObjectCleaner;->CLEANER_TASK:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 34
    sget-object v0, Lio/netty/util/internal/ObjectCleaner;->LIVE_SET:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 34
    sget v0, Lio/netty/util/internal/ObjectCleaner;->REFERENCE_QUEUE_POLL_TIMEOUT_MS:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .line 34
    sget-object v0, Lio/netty/util/internal/ObjectCleaner;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 34
    sget-object v0, Lio/netty/util/internal/ObjectCleaner;->CLEANER_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static getLiveSetCount()I
    .locals 1

    .line 127
    sget-object v0, Lio/netty/util/internal/ObjectCleaner;->LIVE_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public static register(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "cleanupTask"    # Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;

    .line 96
    const-string v1, "cleanupTask"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1}, Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 99
    .local v0, "reference":Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;
    sget-object v1, Lio/netty/util/internal/ObjectCleaner;->LIVE_SET:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v1, Lio/netty/util/internal/ObjectCleaner;->CLEANER_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lio/netty/util/concurrent/FastThreadLocalThread;

    sget-object v2, Lio/netty/util/internal/ObjectCleaner;->CLEANER_TASK:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/FastThreadLocalThread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    .local v1, "cleanupThread":Ljava/lang/Thread;
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 110
    new-instance v2, Lio/netty/util/internal/ObjectCleaner$2;

    invoke-direct {v2, v1}, Lio/netty/util/internal/ObjectCleaner$2;-><init>(Ljava/lang/Thread;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 117
    sget-object v2, Lio/netty/util/internal/ObjectCleaner;->CLEANER_THREAD_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 122
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 124
    .end local v1    # "cleanupThread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
