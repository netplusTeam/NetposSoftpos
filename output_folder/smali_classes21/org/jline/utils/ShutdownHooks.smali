.class public final Lorg/jline/utils/ShutdownHooks;
.super Ljava/lang/Object;
.source "ShutdownHooks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/utils/ShutdownHooks$Task;
    }
.end annotation


# static fields
.field private static hook:Ljava/lang/Thread;

.field private static final tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/utils/ShutdownHooks$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jline/utils/ShutdownHooks;->tasks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 21
    invoke-static {}, Lorg/jline/utils/ShutdownHooks;->runTasks()V

    return-void
.end method

.method public static declared-synchronized add(Lorg/jline/utils/ShutdownHooks$Task;)Lorg/jline/utils/ShutdownHooks$Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jline/utils/ShutdownHooks$Task;",
            ">(TT;)TT;"
        }
    .end annotation

    .local p0, "task":Lorg/jline/utils/ShutdownHooks$Task;, "TT;"
    const-class v0, Lorg/jline/utils/ShutdownHooks;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lorg/jline/utils/ShutdownHooks;->hook:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lorg/jline/utils/ShutdownHooks$1;

    const-string v2, "JLine Shutdown Hook"

    invoke-direct {v1, v2}, Lorg/jline/utils/ShutdownHooks$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/jline/utils/ShutdownHooks;->addHook(Ljava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Lorg/jline/utils/ShutdownHooks;->hook:Ljava/lang/Thread;

    .line 42
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Adding shutdown-hook task: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 43
    sget-object v1, Lorg/jline/utils/ShutdownHooks;->tasks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-object p0

    .line 27
    .end local p0    # "task":Lorg/jline/utils/ShutdownHooks$Task;, "TT;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static addHook(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 3
    .param p0, "thread"    # Ljava/lang/Thread;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Registering shutdown-hook: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 68
    return-object p0
.end method

.method public static declared-synchronized remove(Lorg/jline/utils/ShutdownHooks$Task;)V
    .locals 2
    .param p0, "task"    # Lorg/jline/utils/ShutdownHooks$Task;

    const-class v0, Lorg/jline/utils/ShutdownHooks;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lorg/jline/utils/ShutdownHooks;->hook:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 76
    monitor-exit v0

    return-void

    .line 80
    :cond_0
    :try_start_1
    sget-object v1, Lorg/jline/utils/ShutdownHooks;->tasks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    sget-object v1, Lorg/jline/utils/ShutdownHooks;->hook:Ljava/lang/Thread;

    invoke-static {v1}, Lorg/jline/utils/ShutdownHooks;->removeHook(Ljava/lang/Thread;)V

    .line 85
    const/4 v1, 0x0

    sput-object v1, Lorg/jline/utils/ShutdownHooks;->hook:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_1
    monitor-exit v0

    return-void

    .line 71
    .end local p0    # "task":Lorg/jline/utils/ShutdownHooks$Task;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static removeHook(Ljava/lang/Thread;)V
    .locals 3
    .param p0, "thread"    # Ljava/lang/Thread;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Removing shutdown-hook: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 93
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 98
    :goto_0
    return-void
.end method

.method private static declared-synchronized runTasks()V
    .locals 10

    const-class v0, Lorg/jline/utils/ShutdownHooks;

    monitor-enter v0

    .line 49
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Running all shutdown-hook tasks"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 52
    sget-object v2, Lorg/jline/utils/ShutdownHooks;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jline/utils/ShutdownHooks$Task;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jline/utils/ShutdownHooks$Task;

    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 53
    .local v6, "task":Lorg/jline/utils/ShutdownHooks$Task;
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "Running task: "

    aput-object v9, v8, v4

    aput-object v6, v8, v1

    invoke-static {v8}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    invoke-interface {v6}, Lorg/jline/utils/ShutdownHooks$Task;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v8

    .line 58
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "Task failed"

    aput-object v9, v7, v4

    aput-object v8, v7, v1

    invoke-static {v7}, Lorg/jline/utils/Log;->warn([Ljava/lang/Object;)V

    .line 52
    .end local v6    # "task":Lorg/jline/utils/ShutdownHooks$Task;
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Lorg/jline/utils/ShutdownHooks;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    monitor-exit v0

    return-void

    .line 48
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
