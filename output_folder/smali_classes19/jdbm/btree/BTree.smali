.class public Ljdbm/btree/BTree;
.super Ljava/lang/Object;
.source "BTree.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/btree/BTree$EmptyBrowser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SIZE:I = 0x10

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private transient _bpageSerializer:Ljdbm/btree/BPage;

.field protected _comparator:Ljava/util/Comparator;

.field protected _entries:I

.field private _height:I

.field protected _keySerializer:Ljdbm/helper/Serializer;

.field protected _pageSize:I

.field private transient _recid:J

.field protected transient _recman:Ljdbm/RecordManager;

.field private transient _root:J

.field protected _valueSerializer:Ljdbm/helper/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method public static createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;)Ljdbm/btree/BTree;
    .locals 2
    .param p0, "recman"    # Ljdbm/RecordManager;
    .param p1, "comparator"    # Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {p0, p1, v0, v0, v1}, Ljdbm/btree/BTree;->createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;Ljdbm/helper/Serializer;Ljdbm/helper/Serializer;I)Ljdbm/btree/BTree;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;Ljdbm/helper/Serializer;Ljdbm/helper/Serializer;)Ljdbm/btree/BTree;
    .locals 1
    .param p0, "recman"    # Ljdbm/RecordManager;
    .param p1, "comparator"    # Ljava/util/Comparator;
    .param p2, "keySerializer"    # Ljdbm/helper/Serializer;
    .param p3, "valueSerializer"    # Ljdbm/helper/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    const/16 v0, 0x10

    invoke-static {p0, p1, p2, p3, v0}, Ljdbm/btree/BTree;->createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;Ljdbm/helper/Serializer;Ljdbm/helper/Serializer;I)Ljdbm/btree/BTree;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;Ljdbm/helper/Serializer;Ljdbm/helper/Serializer;I)Ljdbm/btree/BTree;
    .locals 3
    .param p0, "recman"    # Ljdbm/RecordManager;
    .param p1, "comparator"    # Ljava/util/Comparator;
    .param p2, "keySerializer"    # Ljdbm/helper/Serializer;
    .param p3, "valueSerializer"    # Ljdbm/helper/Serializer;
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    if-eqz p0, :cond_7

    .line 233
    if-eqz p1, :cond_6

    .line 237
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_5

    .line 241
    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'keySerializer\' must be serializable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    instance-of v0, p3, Ljava/io/Serializable;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 246
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'valueSerializer\' must be serializable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_3
    :goto_1
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_4

    .line 254
    new-instance v0, Ljdbm/btree/BTree;

    invoke-direct {v0}, Ljdbm/btree/BTree;-><init>()V

    .line 255
    .local v0, "btree":Ljdbm/btree/BTree;
    iput-object p0, v0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    .line 256
    iput-object p1, v0, Ljdbm/btree/BTree;->_comparator:Ljava/util/Comparator;

    .line 257
    iput-object p2, v0, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    .line 258
    iput-object p3, v0, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    .line 259
    iput p4, v0, Ljdbm/btree/BTree;->_pageSize:I

    .line 260
    new-instance v1, Ljdbm/btree/BPage;

    invoke-direct {v1}, Ljdbm/btree/BPage;-><init>()V

    iput-object v1, v0, Ljdbm/btree/BTree;->_bpageSerializer:Ljdbm/btree/BPage;

    .line 261
    iput-object v0, v1, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    .line 262
    invoke-interface {p0, v0}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, v0, Ljdbm/btree/BTree;->_recid:J

    .line 263
    return-object v0

    .line 251
    .end local v0    # "btree":Ljdbm/btree/BTree;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'pageSize\' must be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'comparator\' must be serializable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'comparator\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'recman\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRoot()Ljdbm/btree/BPage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    iget-wide v0, p0, Ljdbm/btree/BTree;->_root:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 523
    const/4 v0, 0x0

    return-object v0

    .line 525
    :cond_0
    iget-object v2, p0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-object v3, p0, Ljdbm/btree/BTree;->_bpageSerializer:Ljdbm/btree/BPage;

    invoke-interface {v2, v0, v1, v3}, Ljdbm/RecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/btree/BPage;

    .line 526
    .local v0, "root":Ljdbm/btree/BPage;
    iget-wide v1, p0, Ljdbm/btree/BTree;->_root:J

    iput-wide v1, v0, Ljdbm/btree/BPage;->_recid:J

    .line 527
    iput-object p0, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    .line 528
    return-object v0
.end method

.method public static load(Ljdbm/RecordManager;J)Ljdbm/btree/BTree;
    .locals 2
    .param p0, "recman"    # Ljdbm/RecordManager;
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-interface {p0, p1, p2}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/btree/BTree;

    .line 277
    .local v0, "btree":Ljdbm/btree/BTree;
    iput-wide p1, v0, Ljdbm/btree/BTree;->_recid:J

    .line 278
    iput-object p0, v0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    .line 279
    new-instance v1, Ljdbm/btree/BPage;

    invoke-direct {v1}, Ljdbm/btree/BPage;-><init>()V

    iput-object v1, v0, Ljdbm/btree/BTree;->_bpageSerializer:Ljdbm/btree/BPage;

    .line 280
    iput-object v0, v1, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    .line 281
    return-object v0
.end method


# virtual methods
.method public declared-synchronized browse()Ljdbm/helper/TupleBrowser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 465
    :try_start_0
    invoke-direct {p0}, Ljdbm/btree/BTree;->getRoot()Ljdbm/btree/BPage;

    move-result-object v0

    .line 466
    .local v0, "rootPage":Ljdbm/btree/BPage;
    if-nez v0, :cond_0

    .line 467
    sget-object v1, Ljdbm/btree/BTree$EmptyBrowser;->INSTANCE:Ljdbm/helper/TupleBrowser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 469
    .end local p0    # "this":Ljdbm/btree/BTree;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljdbm/btree/BPage;->findFirst()Ljdbm/helper/TupleBrowser;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    .local v1, "browser":Ljdbm/helper/TupleBrowser;
    monitor-exit p0

    return-object v1

    .line 464
    .end local v0    # "rootPage":Ljdbm/btree/BPage;
    .end local v1    # "browser":Ljdbm/helper/TupleBrowser;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized browse(Ljava/lang/Object;)Ljdbm/helper/TupleBrowser;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 489
    :try_start_0
    invoke-direct {p0}, Ljdbm/btree/BTree;->getRoot()Ljdbm/btree/BPage;

    move-result-object v0

    .line 490
    .local v0, "rootPage":Ljdbm/btree/BPage;
    if-nez v0, :cond_0

    .line 491
    sget-object v1, Ljdbm/btree/BTree$EmptyBrowser;->INSTANCE:Ljdbm/helper/TupleBrowser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 493
    .end local p0    # "this":Ljdbm/btree/BTree;
    :cond_0
    :try_start_1
    iget v1, p0, Ljdbm/btree/BTree;->_height:I

    invoke-virtual {v0, v1, p1}, Ljdbm/btree/BPage;->find(ILjava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .local v1, "browser":Ljdbm/helper/TupleBrowser;
    monitor-exit p0

    return-object v1

    .line 488
    .end local v0    # "rootPage":Ljdbm/btree/BPage;
    .end local v1    # "browser":Ljdbm/helper/TupleBrowser;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized find(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 398
    if-eqz p1, :cond_3

    .line 401
    :try_start_0
    invoke-direct {p0}, Ljdbm/btree/BTree;->getRoot()Ljdbm/btree/BPage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    .local v0, "rootPage":Ljdbm/btree/BPage;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 403
    monitor-exit p0

    return-object v1

    .line 406
    :cond_0
    :try_start_1
    new-instance v2, Ljdbm/helper/Tuple;

    invoke-direct {v2, v1, v1}, Ljdbm/helper/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    .local v2, "tuple":Ljdbm/helper/Tuple;
    iget v3, p0, Ljdbm/btree/BTree;->_height:I

    invoke-virtual {v0, v3, p1}, Ljdbm/btree/BPage;->find(ILjava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object v3

    .line 409
    .local v3, "browser":Ljdbm/helper/TupleBrowser;
    invoke-virtual {v3, v2}, Ljdbm/helper/TupleBrowser;->getNext(Ljdbm/helper/Tuple;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    iget-object v4, p0, Ljdbm/btree/BTree;->_comparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljdbm/helper/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 413
    monitor-exit p0

    return-object v1

    .line 415
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljdbm/helper/Tuple;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 418
    .end local p0    # "this":Ljdbm/btree/BTree;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 397
    .end local v0    # "rootPage":Ljdbm/btree/BPage;
    .end local v2    # "tuple":Ljdbm/helper/Tuple;
    .end local v3    # "browser":Ljdbm/helper/TupleBrowser;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 399
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'key\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 397
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findGreaterOrEqual(Ljava/lang/Object;)Ljdbm/helper/Tuple;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 437
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 440
    monitor-exit p0

    return-object v0

    .line 443
    :cond_0
    :try_start_0
    new-instance v1, Ljdbm/helper/Tuple;

    invoke-direct {v1, v0, v0}, Ljdbm/helper/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 444
    .local v1, "tuple":Ljdbm/helper/Tuple;
    invoke-virtual {p0, p1}, Ljdbm/btree/BTree;->browse(Ljava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object v2

    .line 445
    .local v2, "browser":Ljdbm/helper/TupleBrowser;
    invoke-virtual {v2, v1}, Ljdbm/helper/TupleBrowser;->getNext(Ljdbm/helper/Tuple;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 446
    monitor-exit p0

    return-object v1

    .line 448
    :cond_1
    monitor-exit p0

    return-object v0

    .line 436
    .end local v1    # "tuple":Ljdbm/helper/Tuple;
    .end local v2    # "browser":Ljdbm/helper/TupleBrowser;
    .end local p0    # "this":Ljdbm/btree/BTree;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRecid()J
    .locals 2

    .line 512
    iget-wide v0, p0, Ljdbm/btree/BTree;->_recid:J

    return-wide v0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 301
    if-eqz p1, :cond_5

    .line 304
    if-eqz p2, :cond_4

    .line 308
    :try_start_0
    invoke-direct {p0}, Ljdbm/btree/BTree;->getRoot()Ljdbm/btree/BPage;

    move-result-object v0

    .line 310
    .local v0, "rootPage":Ljdbm/btree/BPage;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 315
    new-instance v2, Ljdbm/btree/BPage;

    invoke-direct {v2, p0, p1, p2}, Ljdbm/btree/BPage;-><init>(Ljdbm/btree/BTree;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 316
    iget-wide v2, v0, Ljdbm/btree/BPage;->_recid:J

    iput-wide v2, p0, Ljdbm/btree/BTree;->_root:J

    .line 317
    iput v1, p0, Ljdbm/btree/BTree;->_height:I

    .line 318
    iput v1, p0, Ljdbm/btree/BTree;->_entries:I

    .line 319
    iget-object v1, p0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v2, p0, Ljdbm/btree/BTree;->_recid:J

    invoke-interface {v1, v2, v3, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 322
    .end local p0    # "this":Ljdbm/btree/BTree;
    :cond_0
    :try_start_1
    iget v2, p0, Ljdbm/btree/BTree;->_height:I

    invoke-virtual {v0, v2, p1, p2, p3}, Ljdbm/btree/BPage;->insert(ILjava/lang/Object;Ljava/lang/Object;Z)Ljdbm/btree/BPage$InsertResult;

    move-result-object v2

    .line 323
    .local v2, "insert":Ljdbm/btree/BPage$InsertResult;
    const/4 v3, 0x0

    .line 324
    .local v3, "dirty":Z
    iget-object v4, v2, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    if-eqz v4, :cond_1

    .line 329
    new-instance v4, Ljdbm/btree/BPage;

    iget-object v5, v2, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    invoke-direct {v4, p0, v0, v5}, Ljdbm/btree/BPage;-><init>(Ljdbm/btree/BTree;Ljdbm/btree/BPage;Ljdbm/btree/BPage;)V

    move-object v0, v4

    .line 330
    iget-wide v4, v0, Ljdbm/btree/BPage;->_recid:J

    iput-wide v4, p0, Ljdbm/btree/BTree;->_root:J

    .line 331
    iget v4, p0, Ljdbm/btree/BTree;->_height:I

    add-int/2addr v4, v1

    iput v4, p0, Ljdbm/btree/BTree;->_height:I

    .line 332
    const/4 v3, 0x1

    .line 334
    :cond_1
    iget-object v4, v2, Ljdbm/btree/BPage$InsertResult;->_existing:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 335
    iget v4, p0, Ljdbm/btree/BTree;->_entries:I

    add-int/2addr v4, v1

    iput v4, p0, Ljdbm/btree/BTree;->_entries:I

    .line 336
    const/4 v3, 0x1

    .line 338
    :cond_2
    if-eqz v3, :cond_3

    .line 339
    iget-object v1, p0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, p0, Ljdbm/btree/BTree;->_recid:J

    invoke-interface {v1, v4, v5, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 342
    :cond_3
    iget-object v1, v2, Ljdbm/btree/BPage$InsertResult;->_existing:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 305
    .end local v0    # "rootPage":Ljdbm/btree/BPage;
    .end local v2    # "insert":Ljdbm/btree/BPage$InsertResult;
    .end local v3    # "dirty":Z
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'value\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'key\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "replace":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 537
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Ljdbm/btree/BTree;->_comparator:Ljava/util/Comparator;

    .line 538
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/helper/Serializer;

    iput-object v0, p0, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    .line 539
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/helper/Serializer;

    iput-object v0, p0, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    .line 540
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Ljdbm/btree/BTree;->_height:I

    .line 541
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/btree/BTree;->_root:J

    .line 542
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Ljdbm/btree/BTree;->_pageSize:I

    .line 543
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Ljdbm/btree/BTree;->_entries:I

    .line 544
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 357
    if-eqz p1, :cond_5

    .line 361
    :try_start_0
    invoke-direct {p0}, Ljdbm/btree/BTree;->getRoot()Ljdbm/btree/BPage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    .local v0, "rootPage":Ljdbm/btree/BPage;
    if-nez v0, :cond_0

    .line 363
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 365
    :cond_0
    const/4 v1, 0x0

    .line 366
    .local v1, "dirty":Z
    :try_start_1
    iget v2, p0, Ljdbm/btree/BTree;->_height:I

    invoke-virtual {v0, v2, p1}, Ljdbm/btree/BPage;->remove(ILjava/lang/Object;)Ljdbm/btree/BPage$RemoveResult;

    move-result-object v2

    .line 367
    .local v2, "remove":Ljdbm/btree/BPage$RemoveResult;
    iget-boolean v3, v2, Ljdbm/btree/BPage$RemoveResult;->_underflow:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljdbm/btree/BPage;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    iget v3, p0, Ljdbm/btree/BTree;->_height:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljdbm/btree/BTree;->_height:I

    .line 369
    const/4 v1, 0x1

    .line 372
    if-nez v3, :cond_1

    .line 373
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Ljdbm/btree/BTree;->_root:J

    .line 374
    goto :goto_0

    .line 375
    .end local p0    # "this":Ljdbm/btree/BTree;
    :cond_1
    iget v3, p0, Ljdbm/btree/BTree;->_pageSize:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v3

    iget-wide v3, v3, Ljdbm/btree/BPage;->_recid:J

    iput-wide v3, p0, Ljdbm/btree/BTree;->_root:J

    .line 378
    :cond_2
    :goto_0
    iget-object v3, v2, Ljdbm/btree/BPage$RemoveResult;->_value:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 379
    iget v3, p0, Ljdbm/btree/BTree;->_entries:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljdbm/btree/BTree;->_entries:I

    .line 380
    const/4 v1, 0x1

    .line 382
    :cond_3
    if-eqz v1, :cond_4

    .line 383
    iget-object v3, p0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v4, p0, Ljdbm/btree/BTree;->_recid:J

    invoke-interface {v3, v4, v5, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 385
    :cond_4
    iget-object v3, v2, Ljdbm/btree/BPage$RemoveResult;->_value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 356
    .end local v0    # "rootPage":Ljdbm/btree/BPage;
    .end local v1    # "dirty":Z
    .end local v2    # "remove":Ljdbm/btree/BPage$RemoveResult;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 358
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'key\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    .end local p1    # "key":Ljava/lang/Object;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 503
    :try_start_0
    iget v0, p0, Ljdbm/btree/BTree;->_entries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 503
    .end local p0    # "this":Ljdbm/btree/BTree;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Ljdbm/btree/BTree;->_comparator:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 556
    iget v0, p0, Ljdbm/btree/BTree;->_height:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 557
    iget-wide v0, p0, Ljdbm/btree/BTree;->_root:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 558
    iget v0, p0, Ljdbm/btree/BTree;->_pageSize:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 559
    iget v0, p0, Ljdbm/btree/BTree;->_entries:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 560
    return-void
.end method
