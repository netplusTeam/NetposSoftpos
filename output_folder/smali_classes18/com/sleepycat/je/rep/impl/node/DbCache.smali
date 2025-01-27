.class public Lcom/sleepycat/je/rep/impl/node/DbCache;
.super Ljava/lang/Object;
.source "DbCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;,
        Lcom/sleepycat/je/rep/impl/node/DbCache$Info;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dbTree:Lcom/sleepycat/je/dbi/DbTree;

.field private final map:Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;

.field private volatile maxEntries:I

.field private tick:I

.field private tickTime:J

.field private volatile timeoutMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/DbTree;II)V
    .locals 2
    .param p1, "dbTree"    # Lcom/sleepycat/je/dbi/DbTree;
    .param p2, "maxEntries"    # I
    .param p3, "timeoutMs"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->tick:I

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->tickTime:J

    .line 72
    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    .line 75
    iput p3, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->timeoutMs:I

    .line 76
    iput p2, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->maxEntries:I

    .line 77
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;-><init>(Lcom/sleepycat/je/rep/impl/node/DbCache;Lcom/sleepycat/je/rep/impl/node/DbCache$1;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->map:Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;

    .line 78
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/impl/node/DbCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/DbCache;

    .line 47
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->tick:I

    return v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/impl/node/DbCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/DbCache;

    .line 47
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->maxEntries:I

    return v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/impl/node/DbCache;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/DbCache;
    .param p1, "x1"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 47
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/DbCache;->release(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    return-void
.end method

.method private release(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 104
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 105
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->noteWriteHandleClose()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/sleepycat/je/dbi/TriggerManager;->runCloseTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->map:Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;

    .line 178
    .local v1, "dbInfo":Lcom/sleepycat/je/rep/impl/node/DbCache$Info;
    iget-object v2, v1, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/impl/node/DbCache;->release(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 179
    .end local v1    # "dbInfo":Lcom/sleepycat/je/rep/impl/node/DbCache$Info;
    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->map:Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;->clear()V

    .line 181
    return-void
.end method

.method public get(Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 5
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p2, "txn"    # Lcom/sleepycat/je/txn/Txn;

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->map:Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;

    .line 122
    .local v0, "info":Lcom/sleepycat/je/rep/impl/node/DbCache$Info;
    if-eqz v0, :cond_0

    .line 123
    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->tick:I

    iput v1, v0, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->lastAccess:I

    .line 124
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v1

    .line 127
    :cond_0
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;J)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;-><init>(Lcom/sleepycat/je/rep/impl/node/DbCache;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    move-object v0, v1

    .line 128
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->map:Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;

    invoke-virtual {v1, p1, v0}, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->noteWriteHandleOpen()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 130
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/sleepycat/je/dbi/TriggerManager;->runOpenTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Z)V

    .line 132
    :cond_1
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v1
.end method

.method getMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/rep/impl/node/DbCache$Info;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->map:Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;

    return-object v0
.end method

.method public getMaxEntries()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->maxEntries:I

    return v0
.end method

.method public getTimeoutMs()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->timeoutMs:I

    return v0
.end method

.method public setConfig(Lcom/sleepycat/je/rep/impl/RepConfigManager;)V
    .locals 1
    .param p1, "configMgr"    # Lcom/sleepycat/je/rep/impl/RepConfigManager;

    .line 152
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_MAX_OPEN_DB_HANDLES:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/impl/RepConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->maxEntries:I

    .line 153
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->REPLAY_DB_HANDLE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/impl/RepConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->timeoutMs:I

    .line 155
    return-void
.end method

.method public tick()V
    .locals 4

    .line 87
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->timeoutMs:I

    if-lez v0, :cond_0

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->tickTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->timeoutMs:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->map:Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/DbCache$DbCacheLinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "vi":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/rep/impl/node/DbCache$Info;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;

    .line 94
    .local v1, "dbInfo":Lcom/sleepycat/je/rep/impl/node/DbCache$Info;
    iget v2, v1, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->lastAccess:I

    iget v3, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->tick:I

    if-ge v2, v3, :cond_1

    .line 95
    iget-object v2, v1, Lcom/sleepycat/je/rep/impl/node/DbCache$Info;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/impl/node/DbCache;->release(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 98
    .end local v1    # "dbInfo":Lcom/sleepycat/je/rep/impl/node/DbCache$Info;
    :cond_1
    goto :goto_0

    .line 99
    .end local v0    # "vi":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/rep/impl/node/DbCache$Info;>;"
    :cond_2
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->tick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->tick:I

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/DbCache;->tickTime:J

    .line 101
    return-void
.end method
