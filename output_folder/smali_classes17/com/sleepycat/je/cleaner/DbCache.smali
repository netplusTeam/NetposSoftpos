.class Lcom/sleepycat/je/cleaner/DbCache;
.super Ljava/lang/Object;
.source "DbCache.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lcom/sleepycat/je/dbi/DatabaseId;",
        "Lcom/sleepycat/je/cleaner/DbCache$DbInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/cleaner/DbCache$DbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private lastClearTime:J

.field private lookups:I

.field private final timoutMs:J


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/cleaner/Cleaner;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "cleaner"    # Lcom/sleepycat/je/cleaner/Cleaner;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DbCache;->cache:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/DbCache;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 37
    iput-object p2, p0, Lcom/sleepycat/je/cleaner/DbCache;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    .line 39
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_DB_CACHE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/DbCache;->timoutMs:J

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/DbCache;->lastClearTime:J

    .line 43
    return-void
.end method


# virtual methods
.method clearCachePeriodically()V
    .locals 6

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    .local v0, "now":J
    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/DbCache;->lastClearTime:J

    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/DbCache;->timoutMs:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpls()V

    .line 193
    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/DbCache;->lastClearTime:J

    .line 195
    :cond_0
    return-void
.end method

.method getDbImpl(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .locals 4
    .param p1, "id"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 123
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DbCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    .line 124
    .local v0, "info":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    if-nez v0, :cond_0

    .line 125
    new-instance v1, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    invoke-direct {v1}, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;-><init>()V

    move-object v0, v1

    .line 126
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DbCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleted:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleting:Z

    if-nez v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DbCache;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 130
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DbCache;->cleaner:Lcom/sleepycat/je/cleaner/Cleaner;

    iget-wide v2, v2, Lcom/sleepycat/je/cleaner/Cleaner;->lockTimeout:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;J)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    .line 131
    .local v1, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 132
    iput-boolean v2, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleted:Z

    goto :goto_0

    .line 134
    :cond_1
    iput-object v1, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 135
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v3

    iput-boolean v3, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dups:Z

    .line 136
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v3

    iput-boolean v3, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->internal:Z

    .line 137
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v3

    iput-boolean v3, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->isLNImmediatelyObsolete:Z

    .line 138
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->name:Ljava/lang/String;

    .line 139
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v3

    iput-boolean v3, v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->deleting:Z

    .line 141
    :goto_0
    iget v3, p0, Lcom/sleepycat/je/cleaner/DbCache;->lookups:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sleepycat/je/cleaner/DbCache;->lookups:I

    .line 143
    .end local v1    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_2
    return-object v0
.end method

.method getDbInfo(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    .locals 2
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 108
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DbCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    .line 109
    .local v0, "info":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    if-eqz v0, :cond_0

    .line 110
    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/cleaner/DbCache;->getDbImpl(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    move-result-object v1

    return-object v1
.end method

.method getLookups()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/sleepycat/je/cleaner/DbCache;->lookups:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/cleaner/DbCache$DbInfo;",
            ">;>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DbCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method releaseDbImpl(Lcom/sleepycat/je/cleaner/DbCache$DbInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    .line 176
    iget-object v0, p1, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DbCache;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    iget-object v1, p1, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 180
    :cond_0
    return-void
.end method

.method releaseDbImpls()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DbCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/DbCache$DbInfo;

    .line 168
    .local v1, "info":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/cleaner/DbCache;->releaseDbImpl(Lcom/sleepycat/je/cleaner/DbCache$DbInfo;)V

    .line 169
    .end local v1    # "info":Lcom/sleepycat/je/cleaner/DbCache$DbInfo;
    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method
