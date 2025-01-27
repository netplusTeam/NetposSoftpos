.class public final Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;
.super Ljava/lang/Object;
.source "EventDataHandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$BiggerCountComparator;
    }
.end annotation


# static fields
.field private static final scheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final shutdownHooks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->shutdownHooks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->scheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static disableShutdownHooks(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Lcom/itextpdf/kernel/counter/data/EventData<",
            "TT;>;>(",
            "Lcom/itextpdf/kernel/counter/data/EventDataHandler<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "dataHandler":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    sget-object v0, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->shutdownHooks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 103
    .local v0, "toDisable":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v1

    .line 107
    .local v1, "security":Ljava/lang/SecurityException;
    const-class v2, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 108
    const-string v3, "Unable to unregister event data handler shutdown hook because of security permissions"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 114
    .end local v1    # "security":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static disableTimedProcessing(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Lcom/itextpdf/kernel/counter/data/EventData<",
            "TT;>;>(",
            "Lcom/itextpdf/kernel/counter/data/EventDataHandler<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 157
    .local p0, "dataHandler":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    sget-object v0, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->scheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 158
    .local v0, "toDisable":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "security":Ljava/lang/SecurityException;
    const-class v2, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 163
    const-string v3, "Unable to interrupt a thread"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 166
    .end local v1    # "security":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$registerTimedProcessing$0(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V
    .locals 3
    .param p0, "dataHandler"    # Lcom/itextpdf/kernel/counter/data/EventDataHandler;

    .line 132
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->getWaitTime()Lcom/itextpdf/kernel/counter/data/WaitTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/counter/data/WaitTime;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/counter/data/EventDataHandler;->tryProcessNextAsync(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "any":Ljava/lang/Exception;
    const-class v1, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 138
    const-string v2, "Unexpected exception encountered in service thread. Shutting it down."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    goto :goto_1

    .line 134
    .end local v0    # "any":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/InterruptedException;
    nop

    .line 142
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void
.end method

.method public static registerProcessAllShutdownHook(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Lcom/itextpdf/kernel/counter/data/EventData<",
            "TT;>;>(",
            "Lcom/itextpdf/kernel/counter/data/EventDataHandler<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "dataHandler":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    sget-object v0, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->shutdownHooks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$$ExternalSyntheticLambda1;-><init>(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    .local v1, "shutdownHook":Ljava/lang/Thread;
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .local v0, "security":Ljava/lang/SecurityException;
    const-class v2, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 85
    const-string v3, "Unable to register event data handler shutdown hook because of security reasons."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 86
    sget-object v2, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->shutdownHooks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v0    # "security":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 91
    :goto_1
    return-void
.end method

.method public static registerTimedProcessing(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Lcom/itextpdf/kernel/counter/data/EventData<",
            "TT;>;>(",
            "Lcom/itextpdf/kernel/counter/data/EventDataHandler<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 125
    .local p0, "dataHandler":Lcom/itextpdf/kernel/counter/data/EventDataHandler;, "Lcom/itextpdf/kernel/counter/data/EventDataHandler<TT;TV;>;"
    sget-object v0, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil;->scheduledTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/itextpdf/kernel/counter/data/EventDataHandlerUtil$$ExternalSyntheticLambda0;-><init>(Lcom/itextpdf/kernel/counter/data/EventDataHandler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 145
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 146
    return-void
.end method
