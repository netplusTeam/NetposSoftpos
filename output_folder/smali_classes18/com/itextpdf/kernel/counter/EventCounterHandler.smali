.class public Lcom/itextpdf/kernel/counter/EventCounterHandler;
.super Ljava/lang/Object;
.source "EventCounterHandler.java"


# static fields
.field private static final instance:Lcom/itextpdf/kernel/counter/EventCounterHandler;


# instance fields
.field private factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/counter/IEventCounterFactory;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/itextpdf/kernel/counter/EventCounterHandler;

    invoke-direct {v0}, Lcom/itextpdf/kernel/counter/EventCounterHandler;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/counter/EventCounterHandler;->instance:Lcom/itextpdf/kernel/counter/EventCounterHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/counter/EventCounterHandler;->factories:Ljava/util/Map;

    .line 77
    new-instance v0, Lcom/itextpdf/kernel/counter/SimpleEventCounterFactory;

    new-instance v1, Lcom/itextpdf/kernel/counter/DefaultEventCounter;

    invoke-direct {v1}, Lcom/itextpdf/kernel/counter/DefaultEventCounter;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/counter/SimpleEventCounterFactory;-><init>(Lcom/itextpdf/kernel/counter/EventCounter;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/counter/EventCounterHandler;->register(Lcom/itextpdf/kernel/counter/IEventCounterFactory;)V

    .line 78
    return-void
.end method

.method public static getInstance()Lcom/itextpdf/kernel/counter/EventCounterHandler;
    .locals 1

    .line 84
    sget-object v0, Lcom/itextpdf/kernel/counter/EventCounterHandler;->instance:Lcom/itextpdf/kernel/counter/EventCounterHandler;

    return-object v0
.end method


# virtual methods
.method public isRegistered(Lcom/itextpdf/kernel/counter/IEventCounterFactory;)Z
    .locals 1
    .param p1, "factory"    # Lcom/itextpdf/kernel/counter/IEventCounterFactory;

    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/EventCounterHandler;->factories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onEvent(Lcom/itextpdf/kernel/counter/event/IEvent;Lcom/itextpdf/kernel/counter/event/IMetaInfo;Ljava/lang/Class;)V
    .locals 7
    .param p1, "event"    # Lcom/itextpdf/kernel/counter/event/IEvent;
    .param p2, "metaInfo"    # Lcom/itextpdf/kernel/counter/event/IMetaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/counter/event/IEvent;",
            "Lcom/itextpdf/kernel/counter/event/IMetaInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 96
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 97
    .local v0, "context":Lcom/itextpdf/kernel/counter/context/IContext;
    const/4 v1, 0x0

    .line 98
    .local v1, "contextInitialized":Z
    iget-object v2, p0, Lcom/itextpdf/kernel/counter/EventCounterHandler;->factories:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/counter/IEventCounterFactory;

    .line 99
    .local v3, "factory":Lcom/itextpdf/kernel/counter/IEventCounterFactory;
    invoke-interface {v3, p3}, Lcom/itextpdf/kernel/counter/IEventCounterFactory;->getCounter(Ljava/lang/Class;)Lcom/itextpdf/kernel/counter/EventCounter;

    move-result-object v4

    .line 100
    .local v4, "counter":Lcom/itextpdf/kernel/counter/EventCounter;
    if-eqz v4, :cond_6

    .line 101
    if-nez v1, :cond_3

    .line 102
    if-eqz p2, :cond_0

    .line 103
    invoke-static {}, Lcom/itextpdf/kernel/counter/ContextManager;->getInstance()Lcom/itextpdf/kernel/counter/ContextManager;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/counter/ContextManager;->getContext(Ljava/lang/Class;)Lcom/itextpdf/kernel/counter/context/IContext;

    move-result-object v0

    .line 105
    :cond_0
    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Lcom/itextpdf/kernel/counter/ContextManager;->getInstance()Lcom/itextpdf/kernel/counter/ContextManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/itextpdf/kernel/counter/ContextManager;->getContext(Ljava/lang/Class;)Lcom/itextpdf/kernel/counter/context/IContext;

    move-result-object v0

    .line 108
    :cond_1
    if-nez v0, :cond_2

    .line 109
    invoke-static {}, Lcom/itextpdf/kernel/counter/ContextManager;->getInstance()Lcom/itextpdf/kernel/counter/ContextManager;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/counter/ContextManager;->getContext(Ljava/lang/Class;)Lcom/itextpdf/kernel/counter/context/IContext;

    move-result-object v0

    .line 111
    :cond_2
    const/4 v1, 0x1

    .line 113
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/itextpdf/kernel/counter/context/IContext;->allow(Lcom/itextpdf/kernel/counter/event/IEvent;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    if-nez v0, :cond_6

    iget-object v5, v4, Lcom/itextpdf/kernel/counter/EventCounter;->fallback:Lcom/itextpdf/kernel/counter/context/IContext;

    invoke-interface {v5, p1}, Lcom/itextpdf/kernel/counter/context/IContext;->allow(Lcom/itextpdf/kernel/counter/event/IEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 114
    :cond_5
    invoke-virtual {v4, p1, p2}, Lcom/itextpdf/kernel/counter/EventCounter;->onEvent(Lcom/itextpdf/kernel/counter/event/IEvent;Lcom/itextpdf/kernel/counter/event/IMetaInfo;)V

    .line 117
    .end local v3    # "factory":Lcom/itextpdf/kernel/counter/IEventCounterFactory;
    .end local v4    # "counter":Lcom/itextpdf/kernel/counter/EventCounter;
    :cond_6
    goto :goto_0

    .line 118
    :cond_7
    return-void
.end method

.method public register(Lcom/itextpdf/kernel/counter/IEventCounterFactory;)V
    .locals 2
    .param p1, "factory"    # Lcom/itextpdf/kernel/counter/IEventCounterFactory;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/EventCounterHandler;->factories:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    return-void
.end method

.method public unregister(Lcom/itextpdf/kernel/counter/IEventCounterFactory;)Z
    .locals 2
    .param p1, "factory"    # Lcom/itextpdf/kernel/counter/IEventCounterFactory;

    .line 150
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/itextpdf/kernel/counter/EventCounterHandler;->factories:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 153
    :cond_1
    return v0
.end method
