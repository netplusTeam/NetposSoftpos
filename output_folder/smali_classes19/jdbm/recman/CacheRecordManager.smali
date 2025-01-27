.class public Ljdbm/recman/CacheRecordManager;
.super Ljava/lang/Object;
.source "CacheRecordManager.java"

# interfaces
.implements Ljdbm/RecordManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/recman/CacheRecordManager$CacheListener;,
        Ljdbm/recman/CacheRecordManager$CacheEntry;
    }
.end annotation


# instance fields
.field protected _cache:Ljdbm/helper/CachePolicy;

.field protected _recman:Ljdbm/RecordManager;


# direct methods
.method public constructor <init>(Ljdbm/RecordManager;Ljdbm/helper/CachePolicy;)V
    .locals 2
    .param p1, "recman"    # Ljdbm/RecordManager;
    .param p2, "cache"    # Ljdbm/helper/CachePolicy;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-eqz p1, :cond_1

    .line 97
    if-eqz p2, :cond_0

    .line 100
    iput-object p1, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    .line 101
    iput-object p2, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    .line 103
    new-instance v0, Ljdbm/recman/CacheRecordManager$CacheListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljdbm/recman/CacheRecordManager$CacheListener;-><init>(Ljdbm/recman/CacheRecordManager;Ljdbm/recman/CacheRecordManager$1;)V

    invoke-interface {p2, v0}, Ljdbm/helper/CachePolicy;->addListener(Ljdbm/helper/CachePolicyListener;)V

    .line 104
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'cache\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'recman\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    if-eqz v0, :cond_0

    .line 396
    return-void

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordManager has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 282
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 284
    invoke-virtual {p0}, Ljdbm/recman/CacheRecordManager;->updateCacheEntries()V

    .line 285
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->close()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    .line 287
    iput-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 281
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
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

    .line 339
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 340
    invoke-virtual {p0}, Ljdbm/recman/CacheRecordManager;->updateCacheEntries()V

    .line 341
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 338
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(J)V
    .locals 2
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 179
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2}, Ljdbm/RecordManager;->delete(J)V

    .line 180
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljdbm/helper/CachePolicy;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 176
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
    .end local p1    # "recid":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public fetch(J)Ljava/lang/Object;
    .locals 1
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, p2, v0}, Ljdbm/recman/CacheRecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;
    .locals 10
    .param p1, "recid"    # J
    .param p3, "serializer"    # Ljdbm/helper/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 259
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 260
    .local v0, "id":Ljava/lang/Long;
    iget-object v1, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    invoke-interface {v1, v0}, Ljdbm/helper/CachePolicy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/CacheRecordManager$CacheEntry;

    .line 261
    .local v1, "entry":Ljdbm/recman/CacheRecordManager$CacheEntry;
    if-nez v1, :cond_0

    .line 262
    new-instance v9, Ljdbm/recman/CacheRecordManager$CacheEntry;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    move-wide v4, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Ljdbm/recman/CacheRecordManager$CacheEntry;-><init>(Ljdbm/recman/CacheRecordManager;JLjava/lang/Object;Ljdbm/helper/Serializer;Z)V

    move-object v1, v9

    .line 263
    iget-object v2, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v2, p1, p2, p3}, Ljdbm/RecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :try_start_1
    iget-object v2, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    invoke-interface {v2, v0, v1}, Ljdbm/helper/CachePolicy;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljdbm/helper/CacheEvictionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    goto :goto_0

    .line 266
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
    :catch_0
    move-exception v2

    .line 267
    .local v2, "except":Ljdbm/helper/CacheEvictionException;
    :try_start_2
    new-instance v3, Ljdbm/helper/WrappedRuntimeException;

    invoke-direct {v3, v2}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 270
    .end local v2    # "except":Ljdbm/helper/CacheEvictionException;
    :cond_0
    :goto_0
    iget-object v2, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 256
    .end local v0    # "id":Ljava/lang/Long;
    .end local v1    # "entry":Ljdbm/recman/CacheRecordManager$CacheEntry;
    .end local p1    # "recid":J
    .end local p3    # "serializer":Ljdbm/helper/Serializer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCachePolicy()Ljdbm/helper/CachePolicy;
    .locals 1

    .line 127
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    return-object v0
.end method

.method public declared-synchronized getNamedObject(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 368
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 370
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1}, Ljdbm/RecordManager;->getNamedObject(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 367
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRecordManager()Ljdbm/RecordManager;
    .locals 1

    .line 115
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    return-object v0
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

    .line 313
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 315
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1}, Ljdbm/RecordManager;->getRoot(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 312
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRootCount()I
    .locals 1

    monitor-enter p0

    .line 299
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 301
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->getRootCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 298
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
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

    .line 141
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, v0}, Ljdbm/recman/CacheRecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "serializer"    # Ljdbm/helper/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 158
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .local v0, "recid":J
    :try_start_1
    iget-object v9, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v0, v1}, Ljava/lang/Long;-><init>(J)V

    new-instance v11, Ljdbm/recman/CacheRecordManager$CacheEntry;

    const/4 v8, 0x0

    move-object v2, v11

    move-object v3, p0

    move-wide v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Ljdbm/recman/CacheRecordManager$CacheEntry;-><init>(Ljdbm/recman/CacheRecordManager;JLjava/lang/Object;Ljdbm/helper/Serializer;Z)V

    invoke-interface {v9, v10, v11}, Ljdbm/helper/CachePolicy;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljdbm/helper/CacheEvictionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    nop

    .line 164
    monitor-exit p0

    return-wide v0

    .line 161
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
    :catch_0
    move-exception v2

    .line 162
    .local v2, "except":Ljdbm/helper/CacheEvictionException;
    :try_start_2
    new-instance v3, Ljdbm/helper/WrappedRuntimeException;

    invoke-direct {v3, v2}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .end local v0    # "recid":J
    .end local v2    # "except":Ljdbm/helper/CacheEvictionException;
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

    .line 351
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 353
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->rollback()V

    .line 357
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    invoke-interface {v0}, Ljdbm/helper/CachePolicy;->removeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 350
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNamedObject(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 382
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2, p3}, Ljdbm/RecordManager;->setNamedObject(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 379
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "recid":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 327
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 329
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2, p3}, Ljdbm/RecordManager;->setRoot(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 326
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
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

    .line 194
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljdbm/recman/CacheRecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 195
    return-void
.end method

.method public declared-synchronized update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V
    .locals 11
    .param p1, "recid"    # J
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "serializer"    # Ljdbm/helper/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 215
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .local v0, "id":Ljava/lang/Long;
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    invoke-interface {v2, v0}, Ljdbm/helper/CachePolicy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljdbm/recman/CacheRecordManager$CacheEntry;
    :try_end_1
    .catch Ljdbm/helper/CacheEvictionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 218
    .local v1, "entry":Ljdbm/recman/CacheRecordManager$CacheEntry;
    if-eqz v1, :cond_0

    .line 220
    :try_start_2
    iput-object p3, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;

    .line 221
    iput-object p4, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_serializer:Ljdbm/helper/Serializer;

    .line 222
    const/4 v2, 0x1

    iput-boolean v2, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_isDirty:Z

    .line 223
    goto :goto_0

    .line 224
    .end local p0    # "this":Ljdbm/recman/CacheRecordManager;
    :cond_0
    iget-object v2, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    new-instance v10, Ljdbm/recman/CacheRecordManager$CacheEntry;

    const/4 v9, 0x1

    move-object v3, v10

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Ljdbm/recman/CacheRecordManager$CacheEntry;-><init>(Ljdbm/recman/CacheRecordManager;JLjava/lang/Object;Ljdbm/helper/Serializer;Z)V

    invoke-interface {v2, v0, v10}, Ljdbm/helper/CachePolicy;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljdbm/helper/CacheEvictionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :goto_0
    nop

    .line 229
    monitor-exit p0

    return-void

    .line 226
    :catch_0
    move-exception v2

    goto :goto_1

    .end local v1    # "entry":Ljdbm/recman/CacheRecordManager$CacheEntry;
    :catch_1
    move-exception v2

    .line 227
    .restart local v1    # "entry":Ljdbm/recman/CacheRecordManager$CacheEntry;
    .local v2, "except":Ljdbm/helper/CacheEvictionException;
    :goto_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljdbm/helper/CacheEvictionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    .end local v0    # "id":Ljava/lang/Long;
    .end local v1    # "entry":Ljdbm/recman/CacheRecordManager$CacheEntry;
    .end local v2    # "except":Ljdbm/helper/CacheEvictionException;
    .end local p1    # "recid":J
    .end local p3    # "obj":Ljava/lang/Object;
    .end local p4    # "serializer":Ljdbm/helper/Serializer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateCacheEntries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    invoke-interface {v0}, Ljdbm/helper/CachePolicy;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 406
    .local v0, "enume":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/CacheRecordManager$CacheEntry;

    .line 408
    .local v1, "entry":Ljdbm/recman/CacheRecordManager$CacheEntry;
    iget-boolean v2, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_isDirty:Z

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    iget-wide v3, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_recid:J

    iget-object v5, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;

    iget-object v6, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_serializer:Ljdbm/helper/Serializer;

    invoke-interface {v2, v3, v4, v5, v6}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    .line 410
    const/4 v2, 0x0

    iput-boolean v2, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_isDirty:Z

    .line 412
    .end local v1    # "entry":Ljdbm/recman/CacheRecordManager$CacheEntry;
    :cond_0
    goto :goto_0

    .line 413
    :cond_1
    return-void
.end method
