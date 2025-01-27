.class public Lcom/sleepycat/je/log/UtilizationFileReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "UtilizationFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/UtilizationFileReader$NodeInfo;,
        Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;
    }
.end annotation


# instance fields
.field private final dbCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final dbTree:Lcom/sleepycat/je/dbi/DbTree;

.field private final summaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJ)V
    .locals 12
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "startLsn"    # J
    .param p5, "finishLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 84
    move-object v11, p0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/sleepycat/je/log/UtilizationFileReader;->summaries:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/sleepycat/je/log/UtilizationFileReader;->dbCache:Ljava/util/Map;

    .line 94
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    iput-object v0, v11, Lcom/sleepycat/je/log/UtilizationFileReader;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    .line 95
    return-void
.end method

.method private applyIN(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;IZ)V
    .locals 1
    .param p1, "summary"    # Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;
    .param p2, "size"    # I
    .param p3, "isActive"    # Z

    .line 262
    iget v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalINCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalINCount:I

    .line 263
    iget v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalINSize:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalINSize:I

    .line 264
    if-nez p3, :cond_0

    .line 265
    iget v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->obsoleteINCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->obsoleteINCount:I

    .line 266
    invoke-static {p1}, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->access$100(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->access$102(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;I)I

    .line 268
    :cond_0
    return-void
.end method

.method private applyLN(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;IZ)V
    .locals 1
    .param p1, "summary"    # Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;
    .param p2, "size"    # I
    .param p3, "isActive"    # Z

    .line 251
    iget v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalLNCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalLNCount:I

    .line 252
    iget v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalLNSize:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalLNSize:I

    .line 253
    if-nez p3, :cond_0

    .line 254
    iget v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->obsoleteLNCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->obsoleteLNCount:I

    .line 255
    invoke-static {p1}, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->access$200(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->access$202(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;I)I

    .line 257
    :cond_0
    return-void
.end method

.method public static calcFileSummaryMap(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Ljava/util/Map;
    .locals 2
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSummary;",
            ">;"
        }
    .end annotation

    .line 280
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1, v0, v1}, Lcom/sleepycat/je/log/UtilizationFileReader;->calcFileSummaryMap(Lcom/sleepycat/je/dbi/EnvironmentImpl;JJ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static calcFileSummaryMap(Lcom/sleepycat/je/dbi/EnvironmentImpl;JJ)Ljava/util/Map;
    .locals 9
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "startLsn"    # J
    .param p3, "finishLsn"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileSummary;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 289
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 291
    .local v0, "readBufferSize":I
    new-instance v1, Lcom/sleepycat/je/log/UtilizationFileReader;

    move-object v2, v1

    move-object v3, p0

    move v4, v0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/sleepycat/je/log/UtilizationFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJ)V

    .line 294
    .local v1, "reader":Lcom/sleepycat/je/log/UtilizationFileReader;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/sleepycat/je/log/UtilizationFileReader;->readNextEntry()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget-object v2, v1, Lcom/sleepycat/je/log/UtilizationFileReader;->summaries:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-direct {v1}, Lcom/sleepycat/je/log/UtilizationFileReader;->cleanUp()V

    .line 297
    return-object v2

    .line 299
    :catchall_0
    move-exception v2

    invoke-direct {v1}, Lcom/sleepycat/je/log/UtilizationFileReader;->cleanUp()V

    throw v2
.end method

.method private cleanUp()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    iget-object v1, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->dbCache:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDbs(Ljava/util/Map;)V

    .line 272
    return-void
.end method

.method private getActiveDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 4
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 157
    iget-object v0, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->dbTree:Lcom/sleepycat/je/dbi/DbTree;

    iget-object v1, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->dbCache:Ljava/util/Map;

    .line 158
    const-wide/16 v2, -0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;JLjava/util/Map;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 159
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v0, :cond_0

    .line 160
    const/4 v1, 0x0

    return-object v1

    .line 162
    :cond_0
    return-object v0
.end method

.method private isINActive(Lcom/sleepycat/je/log/entry/INLogEntry;Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 12
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/entry/INLogEntry<",
            "*>;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ")Z"
        }
    .end annotation

    .line 204
    .local p1, "inEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/UtilizationFileReader;->getLastLsn()J

    move-result-wide v0

    .line 205
    .local v0, "logLsn":J
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/log/entry/INLogEntry;->getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;

    move-result-object v2

    .line 206
    .local v2, "logIn":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v2, p2}, Lcom/sleepycat/je/tree/IN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 207
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v3

    .line 208
    .local v3, "tree":Lcom/sleepycat/je/tree/Tree;
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->isRoot()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 209
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/Tree;->getRootLsn()J

    move-result-wide v7

    cmp-long v4, v0, v7

    if-nez v4, :cond_0

    move v5, v6

    :cond_0
    return v5

    .line 212
    :cond_1
    sget-object v4, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v4}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 214
    sget-object v4, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v3, v2, v6, v6, v4}, Lcom/sleepycat/je/tree/Tree;->getParentINForChildIN(Lcom/sleepycat/je/tree/IN;ZZLcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/SearchResult;

    move-result-object v4

    .line 218
    .local v4, "result":Lcom/sleepycat/je/tree/SearchResult;
    iget-boolean v7, v4, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    if-nez v7, :cond_2

    .line 219
    return v5

    .line 222
    :cond_2
    :try_start_0
    iget-object v7, v4, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget v8, v4, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/tree/IN;->getLsn(I)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .local v7, "treeLsn":J
    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_3

    .line 225
    nop

    .line 244
    iget-object v6, v4, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 225
    return v5

    .line 228
    :cond_3
    cmp-long v9, v7, v0

    if-nez v9, :cond_4

    .line 229
    nop

    .line 244
    iget-object v5, v4, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 229
    return v6

    .line 232
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_5

    .line 233
    nop

    .line 244
    iget-object v6, v4, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 233
    return v5

    .line 237
    :cond_5
    :try_start_2
    iget-object v9, v4, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    iget v10, v4, Lcom/sleepycat/je/tree/SearchResult;->index:I

    sget-object v11, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    .line 238
    invoke-virtual {v9, v10, v11}, Lcom/sleepycat/je/tree/IN;->fetchIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v9

    .line 240
    .local v9, "treeIn":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v9}, Lcom/sleepycat/je/tree/IN;->getLastFullLsn()J

    move-result-wide v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v7, v10

    .line 242
    cmp-long v10, v7, v0

    if-nez v10, :cond_6

    move v5, v6

    .line 244
    :cond_6
    iget-object v6, v4, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 242
    return v5

    .line 244
    .end local v7    # "treeLsn":J
    .end local v9    # "treeIn":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v5

    iget-object v6, v4, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v5
.end method

.method private isLNActive(Lcom/sleepycat/je/log/entry/LNLogEntry;Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 12
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ")Z"
        }
    .end annotation

    .line 169
    .local p1, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 170
    invoke-virtual {p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v6

    .line 171
    .local v6, "key":[B
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v7

    .line 172
    .local v7, "tree":Lcom/sleepycat/je/tree/Tree;
    new-instance v0, Lcom/sleepycat/je/tree/TreeLocation;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/TreeLocation;-><init>()V

    move-object v8, v0

    .line 174
    .local v8, "location":Lcom/sleepycat/je/tree/TreeLocation;
    sget-object v5, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, v8

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/tree/Tree;->getParentBINForChildLN(Lcom/sleepycat/je/tree/TreeLocation;[BZZLcom/sleepycat/je/CacheMode;)Z

    move-result v0

    .line 178
    .local v0, "parentFound":Z
    iget-object v1, v8, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 181
    .local v1, "bin":Lcom/sleepycat/je/tree/BIN;
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    :try_start_0
    iget v3, v8, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget v3, v8, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    .line 185
    .local v3, "index":I
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .local v4, "treeLsn":J
    const-wide/16 v9, -0x1

    cmp-long v9, v4, v9

    if-nez v9, :cond_2

    .line 187
    nop

    .line 193
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 187
    :cond_1
    return v2

    .line 189
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/je/log/UtilizationFileReader;->getLastLsn()J

    move-result-wide v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .local v9, "logLsn":J
    cmp-long v11, v4, v9

    if-nez v11, :cond_3

    const/4 v2, 0x1

    .line 193
    :cond_3
    if-eqz v1, :cond_4

    .line 194
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 190
    :cond_4
    return v2

    .line 193
    .end local v3    # "index":I
    .end local v4    # "treeLsn":J
    .end local v9    # "logLsn":J
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    .line 194
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    :cond_5
    throw v2

    .line 182
    :cond_6
    :goto_0
    nop

    .line 193
    if-eqz v1, :cond_7

    .line 194
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 182
    :cond_7
    return v2
.end method


# virtual methods
.method protected isTargetEntry()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

    .line 106
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 107
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 9
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 114
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 115
    .local v0, "lastEntryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    .line 116
    .local v1, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v2, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v1, v2, v3, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 118
    iget-object v2, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->summaries:Ljava/util/Map;

    iget-object v3, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 119
    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;

    .line 120
    .local v2, "summary":Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;
    if-nez v2, :cond_0

    .line 121
    new-instance v3, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;-><init>(Lcom/sleepycat/je/log/UtilizationFileReader$1;)V

    move-object v2, v3

    .line 122
    iget-object v3, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->summaries:Ljava/util/Map;

    iget-object v4, p0, Lcom/sleepycat/je/log/UtilizationFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/UtilizationFileReader;->getLastEntrySize()I

    move-result v3

    .line 127
    .local v3, "size":I
    iget v4, v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalCount:I

    .line 128
    iget v4, v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalSize:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalSize:I

    .line 130
    instance-of v4, v1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 131
    move-object v4, v1

    check-cast v4, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 132
    .local v4, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v4}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sleepycat/je/log/UtilizationFileReader;->getActiveDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v7

    .line 133
    .local v7, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v7, :cond_1

    .line 134
    invoke-virtual {v4, v7}, Lcom/sleepycat/je/log/entry/LNLogEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 135
    invoke-direct {p0, v4, v7}, Lcom/sleepycat/je/log/UtilizationFileReader;->isLNActive(Lcom/sleepycat/je/log/entry/LNLogEntry;Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    nop

    .line 136
    .local v6, "isActive":Z
    :goto_0
    invoke-direct {p0, v2, v3, v6}, Lcom/sleepycat/je/log/UtilizationFileReader;->applyLN(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;IZ)V

    .line 137
    .end local v4    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v6    # "isActive":Z
    .end local v7    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_3

    :cond_2
    instance-of v4, v1, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;

    if-nez v4, :cond_5

    instance-of v4, v1, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;

    if-eqz v4, :cond_3

    goto :goto_2

    .line 145
    :cond_3
    instance-of v4, v1, Lcom/sleepycat/je/log/entry/INLogEntry;

    if-eqz v4, :cond_6

    .line 146
    move-object v4, v1

    check-cast v4, Lcom/sleepycat/je/log/entry/INLogEntry;

    .line 147
    .local v4, "inEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    invoke-virtual {v4}, Lcom/sleepycat/je/log/entry/INLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sleepycat/je/log/UtilizationFileReader;->getActiveDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v7

    .line 148
    .restart local v7    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v7, :cond_4

    .line 149
    invoke-direct {p0, v4, v7}, Lcom/sleepycat/je/log/UtilizationFileReader;->isINActive(Lcom/sleepycat/je/log/entry/INLogEntry;Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    nop

    .line 150
    .restart local v6    # "isActive":Z
    :goto_1
    invoke-direct {p0, v2, v3, v6}, Lcom/sleepycat/je/log/UtilizationFileReader;->applyIN(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;IZ)V

    goto :goto_3

    .line 140
    .end local v4    # "inEntry":Lcom/sleepycat/je/log/entry/INLogEntry;, "Lcom/sleepycat/je/log/entry/INLogEntry<*>;"
    .end local v6    # "isActive":Z
    .end local v7    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_5
    :goto_2
    iget v4, v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalINCount:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalINCount:I

    .line 141
    iget v4, v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalINSize:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->totalINSize:I

    .line 143
    iget v4, v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->obsoleteINCount:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->obsoleteINCount:I

    .line 144
    invoke-static {v2}, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->access$100(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;->access$102(Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;I)I

    .line 153
    :cond_6
    :goto_3
    return v5
.end method
