.class public final Ljdbm/recman/BaseRecordManager;
.super Ljava/lang/Object;
.source "BaseRecordManager.java"

# interfaces
.implements Ljdbm/RecordManager;


# static fields
.field public static final DEBUG:Z = false

.field public static final NAME_DIRECTORY_ROOT:I


# instance fields
.field private _file:Ljdbm/recman/RecordFile;

.field private _logMgr:Ljdbm/recman/LogicalRowIdManager;

.field private _nameDirectory:Ljava/util/Map;

.field private _pageman:Ljdbm/recman/PageManager;

.field private _physMgr:Ljdbm/recman/PhysicalRowIdManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljdbm/recman/RecordFile;

    invoke-direct {v0, p1}, Ljdbm/recman/RecordFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    .line 141
    new-instance v1, Ljdbm/recman/PageManager;

    invoke-direct {v1, v0}, Ljdbm/recman/PageManager;-><init>(Ljdbm/recman/RecordFile;)V

    iput-object v1, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    .line 142
    new-instance v0, Ljdbm/recman/PhysicalRowIdManager;

    iget-object v2, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    invoke-direct {v0, v2, v1}, Ljdbm/recman/PhysicalRowIdManager;-><init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V

    iput-object v0, p0, Ljdbm/recman/BaseRecordManager;->_physMgr:Ljdbm/recman/PhysicalRowIdManager;

    .line 143
    new-instance v0, Ljdbm/recman/LogicalRowIdManager;

    iget-object v1, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    iget-object v2, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-direct {v0, v1, v2}, Ljdbm/recman/LogicalRowIdManager;-><init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V

    iput-object v0, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    .line 144
    return-void
.end method

.method private checkIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    if-eqz v0, :cond_0

    .line 484
    return-void

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordManager has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getNameDirectory()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljdbm/recman/BaseRecordManager;->getRoot(I)J

    move-result-wide v1

    .line 452
    .local v1, "nameDirectory_recid":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 453
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ljdbm/recman/BaseRecordManager;->_nameDirectory:Ljava/util/Map;

    .line 454
    invoke-virtual {p0, v3}, Ljdbm/recman/BaseRecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v1

    .line 455
    invoke-virtual {p0, v0, v1, v2}, Ljdbm/recman/BaseRecordManager;->setRoot(IJ)V

    .line 456
    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {p0, v1, v2}, Ljdbm/recman/BaseRecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ljdbm/recman/BaseRecordManager;->_nameDirectory:Ljava/util/Map;

    .line 459
    :goto_0
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_nameDirectory:Ljava/util/Map;

    return-object v0
.end method

.method private saveNameDirectory(Ljava/util/Map;)V
    .locals 4
    .param p1, "directory"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljdbm/recman/BaseRecordManager;->getRoot(I)J

    move-result-wide v0

    .line 467
    .local v0, "recid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 470
    iget-object v2, p0, Ljdbm/recman/BaseRecordManager;->_nameDirectory:Ljava/util/Map;

    invoke-virtual {p0, v0, v1, v2}, Ljdbm/recman/BaseRecordManager;->update(JLjava/lang/Object;)V

    .line 471
    return-void

    .line 468
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Name directory must exist"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 183
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 185
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageManager;->close()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    .line 188
    iget-object v1, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/RecordFile;->close()V

    .line 189
    iput-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 182
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 426
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 428
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageManager;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 425
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(J)V
    .locals 3
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 243
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 252
    new-instance v0, Ljdbm/recman/Location;

    invoke-direct {v0, p1, p2}, Ljdbm/recman/Location;-><init>(J)V

    .line 253
    .local v0, "logRowId":Ljdbm/recman/Location;
    iget-object v1, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    invoke-virtual {v1, v0}, Ljdbm/recman/LogicalRowIdManager;->fetch(Ljdbm/recman/Location;)Ljdbm/recman/Location;

    move-result-object v1

    .line 254
    .local v1, "physRowId":Ljdbm/recman/Location;
    iget-object v2, p0, Ljdbm/recman/BaseRecordManager;->_physMgr:Ljdbm/recman/PhysicalRowIdManager;

    invoke-virtual {v2, v1}, Ljdbm/recman/PhysicalRowIdManager;->delete(Ljdbm/recman/Location;)V

    .line 255
    iget-object v2, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    invoke-virtual {v2, v0}, Ljdbm/recman/LogicalRowIdManager;->delete(Ljdbm/recman/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 244
    .end local v0    # "logRowId":Ljdbm/recman/Location;
    .end local v1    # "physRowId":Ljdbm/recman/Location;
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Argument \'recid\' is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    .end local p1    # "recid":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disableTransactions()V
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 171
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/RecordFile;->disableTransactions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 168
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetch(J)Ljava/lang/Object;
    .locals 1
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, p2, v0}, Ljdbm/recman/BaseRecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;
    .locals 3
    .param p1, "recid"    # J
    .param p3, "serializer"    # Ljdbm/helper/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 332
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 333
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 337
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_physMgr:Ljdbm/recman/PhysicalRowIdManager;

    iget-object v1, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    new-instance v2, Ljdbm/recman/Location;

    invoke-direct {v2, p1, p2}, Ljdbm/recman/Location;-><init>(J)V

    invoke-virtual {v1, v2}, Ljdbm/recman/LogicalRowIdManager;->fetch(Ljdbm/recman/Location;)Ljdbm/recman/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdbm/recman/PhysicalRowIdManager;->fetch(Ljdbm/recman/Location;)[B

    move-result-object v0

    .line 341
    .local v0, "data":[B
    invoke-interface {p3, v0}, Ljdbm/helper/Serializer;->deserialize([B)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 334
    .end local v0    # "data":[B
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Argument \'recid\' is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    .end local p1    # "recid":J
    .end local p3    # "serializer":Ljdbm/helper/Serializer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getNamedObject(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 393
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->getNameDirectory()Ljava/util/Map;

    move-result-object v0

    .line 394
    .local v0, "nameDirectory":Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 395
    .local v1, "recid":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 396
    const-wide/16 v2, 0x0

    return-wide v2

    .line 398
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public declared-synchronized getRoot(I)J
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 366
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageManager;->getFileHeader()Ljdbm/recman/FileHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljdbm/recman/FileHeader;->getRoot(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 363
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRootCount()I
    .locals 1

    .line 353
    const/16 v0, 0x3f5

    return v0
.end method

.method public declared-synchronized getTransactionManager()Ljdbm/recman/TransactionManager;
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 154
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    iget-object v0, v0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 151
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, v0}, Ljdbm/recman/BaseRecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "serializer"    # Ljdbm/helper/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 222
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 224
    invoke-interface {p2, p1}, Ljdbm/helper/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    .line 225
    .local v0, "data":[B
    iget-object v1, p0, Ljdbm/recman/BaseRecordManager;->_physMgr:Ljdbm/recman/PhysicalRowIdManager;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljdbm/recman/PhysicalRowIdManager;->insert([BII)Ljdbm/recman/Location;

    move-result-object v1

    .line 226
    .local v1, "physRowId":Ljdbm/recman/Location;
    iget-object v2, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    invoke-virtual {v2, v1}, Ljdbm/recman/LogicalRowIdManager;->insert(Ljdbm/recman/Location;)Ljdbm/recman/Location;

    move-result-object v2

    invoke-virtual {v2}, Ljdbm/recman/Location;->toLong()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .local v2, "recid":J
    monitor-exit p0

    return-wide v2

    .line 221
    .end local v0    # "data":[B
    .end local v1    # "physRowId":Ljdbm/recman/Location;
    .end local v2    # "recid":J
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    .end local p1    # "obj":Ljava/lang/Object;
    .end local p2    # "serializer":Ljdbm/helper/Serializer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rollback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 438
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 440
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageManager;->rollback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 437
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNamedObject(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 409
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->getNameDirectory()Ljava/util/Map;

    move-result-object v0

    .line 410
    .local v0, "nameDirectory":Ljava/util/Map;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 412
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    goto :goto_0

    .line 414
    :cond_0
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :goto_0
    invoke-direct {p0, v0}, Ljdbm/recman/BaseRecordManager;->saveNameDirectory(Ljava/util/Map;)V

    .line 417
    return-void
.end method

.method public declared-synchronized setRoot(IJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "rowid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 378
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 380
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageManager;->getFileHeader()Ljdbm/recman/FileHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljdbm/recman/FileHeader;->setRoot(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 377
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    .end local p1    # "id":I
    .end local p2    # "rowid":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public update(JLjava/lang/Object;)V
    .locals 1
    .param p1, "recid"    # J
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljdbm/recman/BaseRecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 270
    return-void
.end method

.method public declared-synchronized update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V
    .locals 6
    .param p1, "recid"    # J
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "serializer"    # Ljdbm/helper/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 284
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 285
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 290
    new-instance v0, Ljdbm/recman/Location;

    invoke-direct {v0, p1, p2}, Ljdbm/recman/Location;-><init>(J)V

    .line 291
    .local v0, "logRecid":Ljdbm/recman/Location;
    iget-object v1, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    invoke-virtual {v1, v0}, Ljdbm/recman/LogicalRowIdManager;->fetch(Ljdbm/recman/Location;)Ljdbm/recman/Location;

    move-result-object v1

    .line 293
    .local v1, "physRecid":Ljdbm/recman/Location;
    invoke-interface {p4, p3}, Ljdbm/helper/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object v2

    .line 298
    .local v2, "data":[B
    iget-object v3, p0, Ljdbm/recman/BaseRecordManager;->_physMgr:Ljdbm/recman/PhysicalRowIdManager;

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Ljdbm/recman/PhysicalRowIdManager;->update(Ljdbm/recman/Location;[BII)Ljdbm/recman/Location;

    move-result-object v3

    .line 299
    .local v3, "newRecid":Ljdbm/recman/Location;
    invoke-virtual {v3, v1}, Ljdbm/recman/Location;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 300
    iget-object v4, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    invoke-virtual {v4, v0, v3}, Ljdbm/recman/LogicalRowIdManager;->update(Ljdbm/recman/Location;Ljdbm/recman/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local p0    # "this":Ljdbm/recman/BaseRecordManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 286
    .end local v0    # "logRecid":Ljdbm/recman/Location;
    .end local v1    # "physRecid":Ljdbm/recman/Location;
    .end local v2    # "data":[B
    .end local v3    # "newRecid":Ljdbm/recman/Location;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Argument \'recid\' is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    .end local p1    # "recid":J
    .end local p3    # "obj":Ljava/lang/Object;
    .end local p4    # "serializer":Ljdbm/helper/Serializer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
