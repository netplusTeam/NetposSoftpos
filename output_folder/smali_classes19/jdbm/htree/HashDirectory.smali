.class final Ljdbm/htree/HashDirectory;
.super Ljdbm/htree/HashNode;
.source "HashDirectory.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/htree/HashDirectory$HDIterator;
    }
.end annotation


# static fields
.field static final BIT_SIZE:I = 0x8

.field static final MAX_CHILDREN:I = 0x100

.field static final MAX_DEPTH:I = 0x3

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private _children:[J

.field private _depth:B

.field private transient _recid:J

.field private transient _recman:Ljdbm/RecordManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljdbm/htree/HashNode;-><init>()V

    .line 129
    return-void
.end method

.method constructor <init>(B)V
    .locals 1
    .param p1, "depth"    # B

    .line 136
    invoke-direct {p0}, Ljdbm/htree/HashNode;-><init>()V

    .line 137
    iput-byte p1, p0, Ljdbm/htree/HashDirectory;->_depth:B

    .line 138
    const/16 v0, 0x100

    new-array v0, v0, [J

    iput-object v0, p0, Ljdbm/htree/HashDirectory;->_children:[J

    .line 139
    return-void
.end method

.method static synthetic access$000(Ljdbm/htree/HashDirectory;)[J
    .locals 1
    .param p0, "x0"    # Ljdbm/htree/HashDirectory;

    .line 68
    iget-object v0, p0, Ljdbm/htree/HashDirectory;->_children:[J

    return-object v0
.end method

.method static synthetic access$100(Ljdbm/htree/HashDirectory;)Ljdbm/RecordManager;
    .locals 1
    .param p0, "x0"    # Ljdbm/htree/HashDirectory;

    .line 68
    iget-object v0, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    return-object v0
.end method

.method private hashCode(Ljava/lang/Object;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 342
    invoke-virtual {p0}, Ljdbm/htree/HashDirectory;->hashMask()I

    move-result v0

    .line 343
    .local v0, "hashMask":I
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 344
    .local v1, "hash":I
    and-int/2addr v1, v0

    .line 345
    iget-byte v2, p0, Ljdbm/htree/HashDirectory;->_depth:B

    rsub-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x8

    ushr-int/2addr v1, v2

    .line 346
    rem-int/lit16 v1, v1, 0x100

    .line 353
    return v1
.end method


# virtual methods
.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1}, Ljdbm/htree/HashDirectory;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 187
    .local v0, "hash":I
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aget-wide v1, v1, v0

    .line 188
    .local v1, "child_recid":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 190
    const/4 v3, 0x0

    return-object v3

    .line 192
    :cond_0
    iget-object v3, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v3, v1, v2}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljdbm/htree/HashNode;

    .line 195
    .local v3, "node":Ljdbm/htree/HashNode;
    instance-of v4, v3, Ljdbm/htree/HashDirectory;

    if-eqz v4, :cond_1

    .line 197
    move-object v4, v3

    check-cast v4, Ljdbm/htree/HashDirectory;

    .line 198
    .local v4, "dir":Ljdbm/htree/HashDirectory;
    iget-object v5, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-virtual {v4, v5, v1, v2}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 199
    invoke-virtual {v4, p1}, Ljdbm/htree/HashDirectory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 202
    .end local v4    # "dir":Ljdbm/htree/HashDirectory;
    :cond_1
    move-object v4, v3

    check-cast v4, Ljdbm/htree/HashBucket;

    .line 203
    .local v4, "bucket":Ljdbm/htree/HashBucket;
    invoke-virtual {v4, p1}, Ljdbm/htree/HashBucket;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method getRecid()J
    .locals 2

    .line 160
    iget-wide v0, p0, Ljdbm/htree/HashDirectory;->_recid:J

    return-wide v0
.end method

.method hashMask()I
    .locals 2

    .line 362
    const/16 v0, 0xff

    .line 363
    .local v0, "bits":I
    iget-byte v1, p0, Ljdbm/htree/HashDirectory;->_depth:B

    rsub-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x8

    shl-int v1, v0, v1

    .line 368
    .local v1, "hashMask":I
    return v1
.end method

.method isEmpty()Z
    .locals 5

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_children:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 170
    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x0

    return v1

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method keys()Ljdbm/helper/FastIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    new-instance v0, Ljdbm/htree/HashDirectory$HDIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljdbm/htree/HashDirectory$HDIterator;-><init>(Ljdbm/htree/HashDirectory;Z)V

    return-object v0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    .line 220
    invoke-virtual/range {p0 .. p1}, Ljdbm/htree/HashDirectory;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 222
    :cond_0
    invoke-direct/range {p0 .. p1}, Ljdbm/htree/HashDirectory;->hashCode(Ljava/lang/Object;)I

    move-result v3

    .line 223
    .local v3, "hash":I
    iget-object v4, v0, Ljdbm/htree/HashDirectory;->_children:[J

    aget-wide v4, v4, v3

    .line 224
    .local v4, "child_recid":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 226
    new-instance v6, Ljdbm/htree/HashBucket;

    iget-byte v7, v0, Ljdbm/htree/HashDirectory;->_depth:B

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljdbm/htree/HashBucket;-><init>(I)V

    .line 229
    .local v6, "bucket":Ljdbm/htree/HashBucket;
    invoke-virtual {v6, v1, v2}, Ljdbm/htree/HashBucket;->addElement(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 231
    .local v7, "existing":Ljava/lang/Object;
    iget-object v8, v0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v8, v6}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v8

    .line 232
    .local v8, "b_recid":J
    iget-object v10, v0, Ljdbm/htree/HashDirectory;->_children:[J

    aput-wide v8, v10, v3

    .line 234
    iget-object v10, v0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    iget-wide v11, v0, Ljdbm/htree/HashDirectory;->_recid:J

    invoke-interface {v10, v11, v12, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 237
    return-object v7

    .line 239
    .end local v6    # "bucket":Ljdbm/htree/HashBucket;
    .end local v7    # "existing":Ljava/lang/Object;
    .end local v8    # "b_recid":J
    :cond_1
    iget-object v6, v0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v6, v4, v5}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljdbm/htree/HashNode;

    .line 241
    .local v6, "node":Ljdbm/htree/HashNode;
    instance-of v7, v6, Ljdbm/htree/HashDirectory;

    if-eqz v7, :cond_2

    .line 243
    move-object v7, v6

    check-cast v7, Ljdbm/htree/HashDirectory;

    .line 244
    .local v7, "dir":Ljdbm/htree/HashDirectory;
    iget-object v8, v0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-virtual {v7, v8, v4, v5}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 245
    invoke-virtual {v7, v1, v2}, Ljdbm/htree/HashDirectory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 248
    .end local v7    # "dir":Ljdbm/htree/HashDirectory;
    :cond_2
    move-object v7, v6

    check-cast v7, Ljdbm/htree/HashBucket;

    .line 249
    .local v7, "bucket":Ljdbm/htree/HashBucket;
    invoke-virtual {v7}, Ljdbm/htree/HashBucket;->hasRoom()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 250
    invoke-virtual {v7, v1, v2}, Ljdbm/htree/HashBucket;->addElement(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 251
    .local v8, "existing":Ljava/lang/Object;
    iget-object v9, v0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v9, v4, v5, v7}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 253
    return-object v8

    .line 256
    .end local v8    # "existing":Ljava/lang/Object;
    :cond_3
    iget-byte v8, v0, Ljdbm/htree/HashDirectory;->_depth:B

    const/4 v9, 0x3

    if-eq v8, v9, :cond_5

    .line 260
    new-instance v9, Ljdbm/htree/HashDirectory;

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    invoke-direct {v9, v8}, Ljdbm/htree/HashDirectory;-><init>(B)V

    move-object v8, v9

    .line 261
    .local v8, "dir":Ljdbm/htree/HashDirectory;
    iget-object v9, v0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v9, v8}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v9

    .line 262
    .local v9, "dir_recid":J
    iget-object v11, v0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-virtual {v8, v11, v9, v10}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 264
    iget-object v11, v0, Ljdbm/htree/HashDirectory;->_children:[J

    aput-wide v9, v11, v3

    .line 265
    iget-object v11, v0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    iget-wide v12, v0, Ljdbm/htree/HashDirectory;->_recid:J

    invoke-interface {v11, v12, v13, v0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 268
    iget-object v11, v0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v11, v4, v5}, Ljdbm/RecordManager;->delete(J)V

    .line 271
    invoke-virtual {v7}, Ljdbm/htree/HashBucket;->getKeys()Ljava/util/ArrayList;

    move-result-object v11

    .line 272
    .local v11, "keys":Ljava/util/ArrayList;
    invoke-virtual {v7}, Ljdbm/htree/HashBucket;->getValues()Ljava/util/ArrayList;

    move-result-object v12

    .line 273
    .local v12, "values":Ljava/util/ArrayList;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 274
    .local v13, "entries":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v13, :cond_4

    .line 275
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v3

    .end local v3    # "hash":I
    .local v16, "hash":I
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v15, v3}, Ljdbm/htree/HashDirectory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    goto :goto_0

    .end local v16    # "hash":I
    .restart local v3    # "hash":I
    :cond_4
    move/from16 v16, v3

    .line 279
    .end local v3    # "hash":I
    .end local v14    # "i":I
    .restart local v16    # "hash":I
    invoke-virtual {v8, v1, v2}, Ljdbm/htree/HashDirectory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 257
    .end local v8    # "dir":Ljdbm/htree/HashDirectory;
    .end local v9    # "dir_recid":J
    .end local v11    # "keys":Ljava/util/ArrayList;
    .end local v12    # "values":Ljava/util/ArrayList;
    .end local v13    # "entries":I
    .end local v16    # "hash":I
    .restart local v3    # "hash":I
    :cond_5
    move/from16 v16, v3

    .end local v3    # "hash":I
    .restart local v16    # "hash":I
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Cannot create deeper directory. Depth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-byte v9, v0, Ljdbm/htree/HashDirectory;->_depth:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public declared-synchronized readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 405
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljdbm/htree/HashDirectory;->_depth:B

    .line 406
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    iput-object v0, p0, Ljdbm/htree/HashDirectory;->_children:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 404
    .end local p0    # "this":Ljdbm/htree/HashDirectory;
    .end local p1    # "in":Ljava/io/ObjectInput;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1}, Ljdbm/htree/HashDirectory;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 296
    .local v0, "hash":I
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aget-wide v1, v1, v0

    .line 297
    .local v1, "child_recid":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 299
    const/4 v3, 0x0

    return-object v3

    .line 301
    :cond_0
    iget-object v5, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v5, v1, v2}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljdbm/htree/HashNode;

    .line 304
    .local v5, "node":Ljdbm/htree/HashNode;
    instance-of v6, v5, Ljdbm/htree/HashDirectory;

    if-eqz v6, :cond_2

    .line 306
    move-object v6, v5

    check-cast v6, Ljdbm/htree/HashDirectory;

    .line 307
    .local v6, "dir":Ljdbm/htree/HashDirectory;
    iget-object v7, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-virtual {v6, v7, v1, v2}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 308
    invoke-virtual {v6, p1}, Ljdbm/htree/HashDirectory;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 309
    .local v7, "existing":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 310
    invoke-virtual {v6}, Ljdbm/htree/HashDirectory;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 312
    iget-object v8, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v8, v1, v2}, Ljdbm/RecordManager;->delete(J)V

    .line 313
    iget-object v8, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aput-wide v3, v8, v0

    .line 314
    iget-object v3, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    iget-wide v8, p0, Ljdbm/htree/HashDirectory;->_recid:J

    invoke-interface {v3, v8, v9, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 317
    :cond_1
    return-object v7

    .line 320
    .end local v6    # "dir":Ljdbm/htree/HashDirectory;
    .end local v7    # "existing":Ljava/lang/Object;
    :cond_2
    move-object v6, v5

    check-cast v6, Ljdbm/htree/HashBucket;

    .line 321
    .local v6, "bucket":Ljdbm/htree/HashBucket;
    invoke-virtual {v6, p1}, Ljdbm/htree/HashBucket;->removeElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 322
    .restart local v7    # "existing":Ljava/lang/Object;
    if-eqz v7, :cond_4

    .line 323
    invoke-virtual {v6}, Ljdbm/htree/HashBucket;->getElementCount()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_3

    .line 324
    iget-object v3, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v3, v1, v2, v6}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 325
    goto :goto_0

    .line 327
    :cond_3
    iget-object v8, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v8, v1, v2}, Ljdbm/RecordManager;->delete(J)V

    .line 328
    iget-object v8, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aput-wide v3, v8, v0

    .line 329
    iget-object v3, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    iget-wide v8, p0, Ljdbm/htree/HashDirectory;->_recid:J

    invoke-interface {v3, v8, v9, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 332
    :cond_4
    :goto_0
    return-object v7
.end method

.method setPersistenceContext(Ljdbm/RecordManager;J)V
    .locals 0
    .param p1, "recman"    # Ljdbm/RecordManager;
    .param p2, "recid"    # J

    .line 151
    iput-object p1, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    .line 152
    iput-wide p2, p0, Ljdbm/htree/HashDirectory;->_recid:J

    .line 153
    return-void
.end method

.method values()Ljdbm/helper/FastIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljdbm/htree/HashDirectory$HDIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljdbm/htree/HashDirectory$HDIterator;-><init>(Ljdbm/htree/HashDirectory;Z)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-byte v0, p0, Ljdbm/htree/HashDirectory;->_depth:B

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 396
    iget-object v0, p0, Ljdbm/htree/HashDirectory;->_children:[J

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 397
    return-void
.end method
