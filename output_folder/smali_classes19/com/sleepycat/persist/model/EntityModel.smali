.class public abstract Lcom/sleepycat/persist/model/EntityModel;
.super Ljava/lang/Object;
.source "EntityModel.java"


# instance fields
.field private volatile catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

.field private classLoader:Ljava/lang/ClassLoader;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x1

    .line 393
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 392
    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    return-object v0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final convertRawObject(Lcom/sleepycat/persist/raw/RawObject;)Ljava/lang/Object;
    .locals 3
    .param p1, "raw"    # Lcom/sleepycat/persist/raw/RawObject;

    .line 348
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v1, p1, v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->convertRawObject(Lcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 352
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v2, p1, v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->convertRawObject(Lcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 353
    :catch_1
    move-exception v0

    .line 354
    .local v0, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public final getAllRawTypeVersions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/raw/RawType;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getLatestVersion(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 301
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v0, :cond_1

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/raw/RawType;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 304
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getPreviousVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 309
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/raw/RawType;>;"
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 312
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Store is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAllRawTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/raw/RawType;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->getAllRawTypes()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Store is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public abstract getClassMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/ClassMetadata;
.end method

.method public abstract getEntityMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;
.end method

.method public abstract getKnownClasses()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getKnownSpecialClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getRawType(Ljava/lang/String;)Lcom/sleepycat/persist/raw/RawType;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Store is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRawTypeVersion(Ljava/lang/String;I)Lcom/sleepycat/persist/raw/RawType;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 273
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getLatestVersion(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 275
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    :cond_0
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 277
    return-object v0

    .line 280
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 282
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Store is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final registerClass(Ljava/lang/Class;)V
    .locals 5
    .param p1, "persistentClass"    # Ljava/lang/Class;

    .line 138
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    if-nez v0, :cond_2

    .line 141
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/model/EntityModel;->getClassMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/ClassMetadata;

    move-result-object v1

    .line 143
    .local v1, "meta":Lcom/sleepycat/persist/model/ClassMetadata;
    if-nez v1, :cond_1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class is not persistent, or is not an enum or array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "meta":Lcom/sleepycat/persist/model/ClassMetadata;
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Store is already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/sleepycat/persist/model/EntityModel;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lcom/sleepycat/util/ClassResolver;->resolveClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected setCatalog(Lcom/sleepycat/persist/impl/PersistCatalog;)V
    .locals 0
    .param p1, "newCatalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 166
    iput-object p1, p0, Lcom/sleepycat/persist/model/EntityModel;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 167
    return-void
.end method

.method setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 179
    iput-object p1, p0, Lcom/sleepycat/persist/model/EntityModel;->classLoader:Ljava/lang/ClassLoader;

    .line 180
    return-void
.end method
