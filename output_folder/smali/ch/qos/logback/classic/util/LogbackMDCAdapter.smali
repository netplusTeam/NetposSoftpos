.class public Lch/qos/logback/classic/util/LogbackMDCAdapter;
.super Ljava/lang/Object;
.source "LogbackMDCAdapter.java"

# interfaces
.implements Lorg/slf4j/spi/MDCAdapter;


# static fields
.field private static final MAP_COPY_OPERATION:I = 0x2

.field private static final WRITE_OPERATION:I = 0x1


# instance fields
.field final copyOnThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final lastOperation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    .line 61
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private duplicateAndInsertNewMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    .local p1, "oldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 75
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 78
    monitor-enter p1

    .line 79
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_0
    :goto_0
    iget-object v1, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 84
    return-object v0
.end method

.method private getAndSetLastOperation(I)Ljava/lang/Integer;
    .locals 3
    .param p1, "op"    # I

    .line 64
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    .local v0, "lastOp":Ljava/lang/Integer;
    iget-object v1, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 66
    return-object v0
.end method

.method private wasLastOpReadOrNull(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "lastOp"    # Ljava/lang/Integer;

    .line 70
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 140
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 142
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 150
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 151
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 153
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCopyOfContextMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 186
    .local v0, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 187
    const/4 v1, 0x0

    return-object v1

    .line 189
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 173
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 176
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPropertyMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 99
    if-eqz p1, :cond_2

    .line 103
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 104
    .local v0, "oldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->getAndSetLastOperation(I)Ljava/lang/Integer;

    move-result-object v1

    .line 106
    .local v1, "lastOp":Ljava/lang/Integer;
    invoke-direct {p0, v1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->wasLastOpReadOrNull(Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->duplicateAndInsertNewMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 108
    .local v2, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v2    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 112
    :goto_1
    return-void

    .line 100
    .end local v0    # "oldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "lastOp":Ljava/lang/Integer;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 119
    if-nez p1, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 123
    .local v0, "oldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 124
    return-void

    .line 126
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->getAndSetLastOperation(I)Ljava/lang/Integer;

    move-result-object v1

    .line 128
    .local v1, "lastOp":Ljava/lang/Integer;
    invoke-direct {p0, v1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->wasLastOpReadOrNull(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-direct {p0, v0}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->duplicateAndInsertNewMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 130
    .local v2, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v2    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_0
    return-void
.end method

.method public setContextMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p1, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->lastOperation:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 197
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 200
    iget-object v1, p0, Lch/qos/logback/classic/util/LogbackMDCAdapter;->copyOnThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 201
    return-void
.end method
