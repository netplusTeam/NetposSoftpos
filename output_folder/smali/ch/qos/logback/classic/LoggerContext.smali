.class public Lch/qos/logback/classic/LoggerContext;
.super Lch/qos/logback/core/ContextBase;
.source "LoggerContext.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;
.implements Lch/qos/logback/core/spi/LifeCycle;


# static fields
.field public static final DEFAULT_PACKAGING_DATA:Z = false


# instance fields
.field private frameworkPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loggerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/qos/logback/classic/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerContextListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/classic/spi/LoggerContextListener;",
            ">;"
        }
    .end annotation
.end field

.field private loggerContextRemoteView:Lch/qos/logback/classic/spi/LoggerContextVO;

.field private maxCallerDataDepth:I

.field private noAppenderWarning:I

.field private packagingDataEnabled:Z

.field resetCount:I

.field final root:Lch/qos/logback/classic/Logger;

.field private size:I

.field private final turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Lch/qos/logback/core/ContextBase;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/classic/LoggerContext;->noAppenderWarning:I

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    .line 66
    new-instance v1, Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-direct {v1}, Lch/qos/logback/classic/spi/TurboFilterList;-><init>()V

    iput-object v1, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    .line 67
    iput-boolean v0, p0, Lch/qos/logback/classic/LoggerContext;->packagingDataEnabled:Z

    .line 69
    const/16 v1, 0x8

    iput v1, p0, Lch/qos/logback/classic/LoggerContext;->maxCallerDataDepth:I

    .line 71
    iput v0, p0, Lch/qos/logback/classic/LoggerContext;->resetCount:I

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    .line 78
    new-instance v0, Lch/qos/logback/classic/spi/LoggerContextVO;

    invoke-direct {v0, p0}, Lch/qos/logback/classic/spi/LoggerContextVO;-><init>(Lch/qos/logback/classic/LoggerContext;)V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextRemoteView:Lch/qos/logback/classic/spi/LoggerContextVO;

    .line 79
    new-instance v0, Lch/qos/logback/classic/Logger;

    const-string v1, "ROOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lch/qos/logback/classic/Logger;-><init>(Ljava/lang/String;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/LoggerContext;)V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->root:Lch/qos/logback/classic/Logger;

    .line 80
    sget-object v2, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-virtual {v0, v2}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    .line 81
    iget-object v2, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->initEvaluatorMap()V

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lch/qos/logback/classic/LoggerContext;->size:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->frameworkPackages:Ljava/util/List;

    .line 85
    return-void
.end method

.method private cancelScheduledTasks()V
    .locals 3

    .line 232
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->scheduledFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    .line 233
    .local v1, "sf":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 234
    .end local v1    # "sf":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    goto :goto_0

    .line 235
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->scheduledFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    return-void
.end method

.method private fireOnReset()V
    .locals 2

    .line 323
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/spi/LoggerContextListener;

    .line 324
    .local v1, "listener":Lch/qos/logback/classic/spi/LoggerContextListener;
    invoke-interface {v1, p0}, Lch/qos/logback/classic/spi/LoggerContextListener;->onReset(Lch/qos/logback/classic/LoggerContext;)V

    .line 325
    .end local v1    # "listener":Lch/qos/logback/classic/spi/LoggerContextListener;
    goto :goto_0

    .line 326
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private fireOnStart()V
    .locals 2

    .line 329
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/spi/LoggerContextListener;

    .line 330
    .local v1, "listener":Lch/qos/logback/classic/spi/LoggerContextListener;
    invoke-interface {v1, p0}, Lch/qos/logback/classic/spi/LoggerContextListener;->onStart(Lch/qos/logback/classic/LoggerContext;)V

    .line 331
    .end local v1    # "listener":Lch/qos/logback/classic/spi/LoggerContextListener;
    goto :goto_0

    .line 332
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private fireOnStop()V
    .locals 2

    .line 335
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/spi/LoggerContextListener;

    .line 336
    .local v1, "listener":Lch/qos/logback/classic/spi/LoggerContextListener;
    invoke-interface {v1, p0}, Lch/qos/logback/classic/spi/LoggerContextListener;->onStop(Lch/qos/logback/classic/LoggerContext;)V

    .line 337
    .end local v1    # "listener":Lch/qos/logback/classic/spi/LoggerContextListener;
    goto :goto_0

    .line 338
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private incSize()V
    .locals 1

    .line 167
    iget v0, p0, Lch/qos/logback/classic/LoggerContext;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/classic/LoggerContext;->size:I

    .line 168
    return-void
.end method

.method private resetAllListeners()V
    .locals 1

    .line 309
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 310
    return-void
.end method

.method private resetListenersExceptResetResistant()V
    .locals 4

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "toRetain":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/classic/spi/LoggerContextListener;>;"
    iget-object v1, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/spi/LoggerContextListener;

    .line 301
    .local v2, "lcl":Lch/qos/logback/classic/spi/LoggerContextListener;
    invoke-interface {v2}, Lch/qos/logback/classic/spi/LoggerContextListener;->isResetResistant()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v2    # "lcl":Lch/qos/logback/classic/spi/LoggerContextListener;
    :cond_0
    goto :goto_0

    .line 305
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 306
    return-void
.end method

.method private resetStatusListeners()V
    .locals 3

    .line 239
    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    .line 240
    .local v0, "sm":Lch/qos/logback/core/status/StatusManager;
    invoke-interface {v0}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusListenerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/status/StatusListener;

    .line 241
    .local v2, "sl":Lch/qos/logback/core/status/StatusListener;
    invoke-interface {v0, v2}, Lch/qos/logback/core/status/StatusManager;->remove(Lch/qos/logback/core/status/StatusListener;)V

    .line 242
    .end local v2    # "sl":Lch/qos/logback/core/status/StatusListener;
    goto :goto_0

    .line 243
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private updateLoggerContextVO()V
    .locals 1

    .line 96
    new-instance v0, Lch/qos/logback/classic/spi/LoggerContextVO;

    invoke-direct {v0, p0}, Lch/qos/logback/classic/spi/LoggerContextVO;-><init>(Lch/qos/logback/classic/LoggerContext;)V

    iput-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextRemoteView:Lch/qos/logback/classic/spi/LoggerContextVO;

    .line 97
    return-void
.end method


# virtual methods
.method public addListener(Lch/qos/logback/classic/spi/LoggerContextListener;)V
    .locals 1
    .param p1, "listener"    # Lch/qos/logback/classic/spi/LoggerContextListener;

    .line 290
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public addTurboFilter(Lch/qos/logback/classic/turbo/TurboFilter;)V
    .locals 1
    .param p1, "newFilter"    # Lch/qos/logback/classic/turbo/TurboFilter;

    .line 250
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0, p1}, Lch/qos/logback/classic/spi/TurboFilterList;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public exists(Ljava/lang/String;)Lch/qos/logback/classic/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/Logger;

    return-object v0
.end method

.method fireOnLevelChange(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;)V
    .locals 2
    .param p1, "logger"    # Lch/qos/logback/classic/Logger;
    .param p2, "level"    # Lch/qos/logback/classic/Level;

    .line 317
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/spi/LoggerContextListener;

    .line 318
    .local v1, "listener":Lch/qos/logback/classic/spi/LoggerContextListener;
    invoke-interface {v1, p1, p2}, Lch/qos/logback/classic/spi/LoggerContextListener;->onLevelChange(Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;)V

    .line 319
    .end local v1    # "listener":Lch/qos/logback/classic/spi/LoggerContextListener;
    goto :goto_0

    .line 320
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getCopyOfListenerList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/classic/spi/LoggerContextListener;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFrameworkPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->frameworkPackages:Ljava/util/List;

    return-object v0
.end method

.method public final getLogger(Ljava/lang/Class;)Lch/qos/logback/classic/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lch/qos/logback/classic/Logger;"
        }
    .end annotation

    .line 112
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 118
    if-eqz p1, :cond_5

    .line 124
    const-string v0, "ROOT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->root:Lch/qos/logback/classic/Logger;

    return-object v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 129
    .local v0, "i":I
    iget-object v1, p0, Lch/qos/logback/classic/LoggerContext;->root:Lch/qos/logback/classic/Logger;

    .line 133
    .local v1, "logger":Lch/qos/logback/classic/Logger;
    iget-object v2, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/Logger;

    .line 135
    .local v2, "childLogger":Lch/qos/logback/classic/Logger;
    if-eqz v2, :cond_1

    .line 136
    return-object v2

    .line 143
    :cond_1
    :goto_0
    invoke-static {p1, v0}, Lch/qos/logback/classic/util/LoggerNameUtil;->getSeparatorIndexOf(Ljava/lang/String;I)I

    move-result v3

    .line 144
    .local v3, "h":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 145
    move-object v5, p1

    .local v5, "childName":Ljava/lang/String;
    goto :goto_1

    .line 147
    .end local v5    # "childName":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 150
    .restart local v5    # "childName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v3, 0x1

    .line 151
    monitor-enter v1

    .line 152
    :try_start_0
    invoke-virtual {v1, v5}, Lch/qos/logback/classic/Logger;->getChildByName(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v6

    move-object v2, v6

    .line 153
    if-nez v2, :cond_3

    .line 154
    invoke-virtual {v1, v5}, Lch/qos/logback/classic/Logger;->createChildByName(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v6

    move-object v2, v6

    .line 155
    iget-object v6, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->incSize()V

    .line 158
    :cond_3
    monitor-exit v1

    .line 159
    move-object v1, v2

    .line 160
    if-ne v3, v4, :cond_4

    .line 161
    return-object v2

    .line 163
    .end local v3    # "h":I
    :cond_4
    goto :goto_0

    .line 158
    .restart local v3    # "h":I
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 119
    .end local v0    # "i":I
    .end local v1    # "logger":Lch/qos/logback/classic/Logger;
    .end local v2    # "childLogger":Lch/qos/logback/classic/Logger;
    .end local v3    # "h":I
    .end local v5    # "childName":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object p1

    return-object p1
.end method

.method public getLoggerContextRemoteView()Lch/qos/logback/classic/spi/LoggerContextVO;
    .locals 1

    .line 198
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextRemoteView:Lch/qos/logback/classic/spi/LoggerContextVO;

    return-object v0
.end method

.method public getLoggerList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/classic/Logger;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 192
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lch/qos/logback/classic/Logger;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    .local v1, "loggerList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/classic/Logger;>;"
    new-instance v2, Lch/qos/logback/classic/spi/LoggerComparator;

    invoke-direct {v2}, Lch/qos/logback/classic/spi/LoggerComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 194
    return-object v1
.end method

.method public getMaxCallerDataDepth()I
    .locals 1

    .line 360
    iget v0, p0, Lch/qos/logback/classic/LoggerContext;->maxCallerDataDepth:I

    return v0
.end method

.method final getTurboFilterChainDecision_0_3OrMore(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 8
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "logger"    # Lch/qos/logback/classic/Logger;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 266
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/TurboFilterList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 269
    :cond_0
    iget-object v1, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lch/qos/logback/classic/spi/TurboFilterList;->getTurboFilterChainDecision(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    return-object v0
.end method

.method final getTurboFilterChainDecision_1(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 8
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "logger"    # Lch/qos/logback/classic/Logger;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "param"    # Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 274
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/TurboFilterList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 277
    :cond_0
    iget-object v1, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p5, v6, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lch/qos/logback/classic/spi/TurboFilterList;->getTurboFilterChainDecision(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    return-object v0
.end method

.method final getTurboFilterChainDecision_2(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 8
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "logger"    # Lch/qos/logback/classic/Logger;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "param1"    # Ljava/lang/Object;
    .param p6, "param2"    # Ljava/lang/Object;
    .param p7, "t"    # Ljava/lang/Throwable;

    .line 282
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/TurboFilterList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 285
    :cond_0
    iget-object v1, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p5, v6, v0

    const/4 v0, 0x1

    aput-object p6, v6, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lch/qos/logback/classic/spi/TurboFilterList;->getTurboFilterChainDecision(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    return-object v0
.end method

.method public getTurboFilterList()Lch/qos/logback/classic/spi/TurboFilterList;
    .locals 1

    .line 246
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    return-object v0
.end method

.method initEvaluatorMap()V
    .locals 2

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "EVALUATOR_MAP"

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/classic/LoggerContext;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public isPackagingDataEnabled()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lch/qos/logback/classic/LoggerContext;->packagingDataEnabled:Z

    return v0
.end method

.method final noAppenderDefinedWarning(Lch/qos/logback/classic/Logger;)V
    .locals 4
    .param p1, "logger"    # Lch/qos/logback/classic/Logger;

    .line 185
    iget v0, p0, Lch/qos/logback/classic/LoggerContext;->noAppenderWarning:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lch/qos/logback/classic/LoggerContext;->noAppenderWarning:I

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v0

    new-instance v1, Lch/qos/logback/core/status/WarnStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No appenders present in context ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for logger ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/Status;)V

    .line 188
    :cond_0
    return-void
.end method

.method public putProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 101
    invoke-super {p0, p1, p2}, Lch/qos/logback/core/ContextBase;->putProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->updateLoggerContextVO()V

    .line 103
    return-void
.end method

.method public removeListener(Lch/qos/logback/classic/spi/LoggerContextListener;)V
    .locals 1
    .param p1, "listener"    # Lch/qos/logback/classic/spi/LoggerContextListener;

    .line 294
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->loggerContextListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public reset()V
    .locals 1

    .line 219
    iget v0, p0, Lch/qos/logback/classic/LoggerContext;->resetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/classic/LoggerContext;->resetCount:I

    .line 220
    invoke-super {p0}, Lch/qos/logback/core/ContextBase;->reset()V

    .line 221
    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->initEvaluatorMap()V

    .line 222
    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->initCollisionMaps()V

    .line 223
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->root:Lch/qos/logback/classic/Logger;

    invoke-virtual {v0}, Lch/qos/logback/classic/Logger;->recursiveReset()V

    .line 224
    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->resetTurboFilterList()V

    .line 225
    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->cancelScheduledTasks()V

    .line 226
    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->fireOnReset()V

    .line 227
    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->resetListenersExceptResetResistant()V

    .line 228
    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->resetStatusListeners()V

    .line 229
    return-void
.end method

.method public resetTurboFilterList()V
    .locals 2

    .line 258
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/TurboFilterList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/turbo/TurboFilter;

    .line 259
    .local v1, "tf":Lch/qos/logback/classic/turbo/TurboFilter;
    invoke-virtual {v1}, Lch/qos/logback/classic/turbo/TurboFilter;->stop()V

    .line 260
    .end local v1    # "tf":Lch/qos/logback/classic/turbo/TurboFilter;
    goto :goto_0

    .line 261
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/LoggerContext;->turboFilterList:Lch/qos/logback/classic/spi/TurboFilterList;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/TurboFilterList;->clear()V

    .line 262
    return-void
.end method

.method public setMaxCallerDataDepth(I)V
    .locals 0
    .param p1, "maxCallerDataDepth"    # I

    .line 364
    iput p1, p0, Lch/qos/logback/classic/LoggerContext;->maxCallerDataDepth:I

    .line 365
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 107
    invoke-super {p0, p1}, Lch/qos/logback/core/ContextBase;->setName(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->updateLoggerContextVO()V

    .line 109
    return-void
.end method

.method public setPackagingDataEnabled(Z)V
    .locals 0
    .param p1, "packagingDataEnabled"    # Z

    .line 202
    iput-boolean p1, p0, Lch/qos/logback/classic/LoggerContext;->packagingDataEnabled:Z

    .line 203
    return-void
.end method

.method size()I
    .locals 1

    .line 171
    iget v0, p0, Lch/qos/logback/classic/LoggerContext;->size:I

    return v0
.end method

.method public start()V
    .locals 0

    .line 343
    invoke-super {p0}, Lch/qos/logback/core/ContextBase;->start()V

    .line 344
    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->fireOnStart()V

    .line 345
    return-void
.end method

.method public stop()V
    .locals 0

    .line 348
    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->reset()V

    .line 349
    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->fireOnStop()V

    .line 350
    invoke-direct {p0}, Lch/qos/logback/classic/LoggerContext;->resetAllListeners()V

    .line 351
    invoke-super {p0}, Lch/qos/logback/core/ContextBase;->stop()V

    .line 352
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
