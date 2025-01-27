.class Lcom/sleepycat/je/evictor/Evictor$DbCache;
.super Ljava/lang/Object;
.source "Evictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DbCache"
.end annotation


# instance fields
.field dbCacheClearCount:I

.field final dbMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;"
        }
    .end annotation
.end field

.field final envMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field nOperations:I

.field shared:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 2
    .param p1, "shared"    # Z
    .param p2, "dbCacheClearCount"    # I

    .line 3337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->shared:Z

    .line 3329
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->nOperations:I

    .line 3331
    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->dbCacheClearCount:I

    .line 3339
    iput-boolean p1, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->shared:Z

    .line 3340
    iput p2, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->dbCacheClearCount:I

    .line 3342
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3343
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->envMap:Ljava/util/Map;

    .line 3346
    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->dbMap:Ljava/util/Map;

    goto :goto_0

    .line 3348
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->dbMap:Ljava/util/Map;

    .line 3349
    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->envMap:Ljava/util/Map;

    .line 3351
    :goto_0
    return-void
.end method


# virtual methods
.method getDb(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 4
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 3367
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->shared:Z

    if-eqz v0, :cond_0

    .line 3368
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->envMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3369
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    if-nez v0, :cond_1

    .line 3370
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 3371
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->envMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3374
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->dbMap:Ljava/util/Map;

    .line 3389
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->nOperations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->nOperations:I

    .line 3390
    iget v2, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->dbCacheClearCount:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 3391
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/evictor/Evictor$DbCache;->releaseDbs(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 3394
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, p2, v2, v3, v0}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;JLjava/util/Map;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    return-object v1
.end method

.method releaseDbs(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 5
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 3401
    iget-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->shared:Z

    if-eqz v0, :cond_1

    .line 3403
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->envMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3405
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 3406
    .local v2, "sharingEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 3408
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 3409
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 3410
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;>;"
    .end local v2    # "sharingEnv":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 3412
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->dbMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 3413
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$DbCache;->dbMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3415
    :goto_1
    return-void
.end method
