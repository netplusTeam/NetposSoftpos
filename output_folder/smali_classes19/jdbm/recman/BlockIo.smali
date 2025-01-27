.class public final Ljdbm/recman/BlockIo;
.super Ljava/lang/Object;
.source "BlockIo.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final serialVersionUID:J = 0x2L


# instance fields
.field private blockId:J

.field private transient data:[B

.field private transient dirty:Z

.field private transient transactionCount:I

.field private transient view:Ljdbm/recman/BlockView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ljdbm/recman/BlockIo;->view:Ljdbm/recman/BlockView;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdbm/recman/BlockIo;->dirty:Z

    .line 70
    iput v0, p0, Ljdbm/recman/BlockIo;->transactionCount:I

    .line 77
    return-void
.end method

.method constructor <init>(J[B)V
    .locals 3
    .param p1, "blockId"    # J
    .param p3, "data"    # [B

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ljdbm/recman/BlockIo;->view:Ljdbm/recman/BlockView;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdbm/recman/BlockIo;->dirty:Z

    .line 70
    iput v0, p0, Ljdbm/recman/BlockIo;->transactionCount:I

    .line 85
    const-wide v0, 0x2540be400L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 87
    iput-wide p1, p0, Ljdbm/recman/BlockIo;->blockId:J

    .line 88
    iput-object p3, p0, Ljdbm/recman/BlockIo;->data:[B

    .line 89
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bogus block id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method declared-synchronized decrementTransactionCount()V
    .locals 4

    monitor-enter p0

    .line 176
    :try_start_0
    iget v0, p0, Ljdbm/recman/BlockIo;->transactionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljdbm/recman/BlockIo;->transactionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-ltz v0, :cond_0

    .line 181
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "transaction count on block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " below zero!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local p0    # "this":Ljdbm/recman/BlockIo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBlockId()J
    .locals 2

    .line 114
    iget-wide v0, p0, Ljdbm/recman/BlockIo;->blockId:J

    return-wide v0
.end method

.method getData()[B
    .locals 1

    .line 95
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    return-object v0
.end method

.method public getView()Ljdbm/recman/BlockView;
    .locals 1

    .line 121
    iget-object v0, p0, Ljdbm/recman/BlockIo;->view:Ljdbm/recman/BlockView;

    return-object v0
.end method

.method declared-synchronized incrementTransactionCount()V
    .locals 1

    monitor-enter p0

    .line 166
    :try_start_0
    iget v0, p0, Ljdbm/recman/BlockIo;->transactionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljdbm/recman/BlockIo;->transactionCount:I

    .line 168
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->setClean()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 165
    .end local p0    # "this":Ljdbm/recman/BlockIo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isDirty()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Ljdbm/recman/BlockIo;->dirty:Z

    return v0
.end method

.method isInTransaction()Z
    .locals 1

    .line 157
    iget v0, p0, Ljdbm/recman/BlockIo;->transactionCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte(I)B
    .locals 1
    .param p1, "pos"    # I

    .line 187
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    aget-byte v0, v0, p1

    return v0
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

    .line 294
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/recman/BlockIo;->blockId:J

    .line 295
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 296
    .local v0, "length":I
    new-array v1, v0, [B

    iput-object v1, p0, Ljdbm/recman/BlockIo;->data:[B

    .line 297
    invoke-interface {p1, v1}, Ljava/io/ObjectInput;->readFully([B)V

    .line 298
    return-void
.end method

.method public readInt(I)I
    .locals 3
    .param p1, "pos"    # I

    .line 220
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong(I)J
    .locals 7
    .param p1, "pos"    # I

    .line 245
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x7

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    int-to-long v3, v0

    const-wide/16 v5, -0x1

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public readShort(I)S
    .locals 3
    .param p1, "pos"    # I

    .line 202
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method setBlockId(J)V
    .locals 3
    .param p1, "id"    # J

    .line 102
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-wide v0, 0x2540be400L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 107
    iput-wide p1, p0, Ljdbm/recman/BlockIo;->blockId:J

    .line 108
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bogus block id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "BlockId assigned for transaction block"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setClean()V
    .locals 1

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdbm/recman/BlockIo;->dirty:Z

    .line 143
    return-void
.end method

.method setDirty()V
    .locals 1

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljdbm/recman/BlockIo;->dirty:Z

    .line 136
    return-void
.end method

.method public setView(Ljdbm/recman/BlockView;)V
    .locals 0
    .param p1, "view"    # Ljdbm/recman/BlockView;

    .line 128
    iput-object p1, p0, Ljdbm/recman/BlockIo;->view:Ljdbm/recman/BlockView;

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BlockIO("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ljdbm/recman/BlockIo;->blockId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v2, p0, Ljdbm/recman/BlockIo;->dirty:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljdbm/recman/BlockIo;->view:Ljdbm/recman/BlockView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByte(IB)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "value"    # B

    .line 194
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    aput-byte p2, v0, p1

    .line 195
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->setDirty()V

    .line 196
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-wide v0, p0, Ljdbm/recman/BlockIo;->blockId:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 303
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 304
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write([B)V

    .line 305
    return-void
.end method

.method public writeInt(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "value"    # I

    .line 231
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    add-int/lit8 v1, p1, 0x0

    shr-int/lit8 v2, p2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 232
    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 233
    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 234
    add-int/lit8 v1, p1, 0x3

    shr-int/lit8 v2, p2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 235
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->setDirty()V

    .line 236
    return-void
.end method

.method public writeLong(IJ)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "value"    # J

    .line 271
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    add-int/lit8 v1, p1, 0x0

    const/16 v2, 0x38

    shr-long v2, p2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 272
    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x30

    shr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 273
    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x28

    shr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 274
    add-int/lit8 v1, p1, 0x3

    const/16 v2, 0x20

    shr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 275
    add-int/lit8 v1, p1, 0x4

    const/16 v2, 0x18

    shr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 276
    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x10

    shr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 277
    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x8

    shr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 278
    add-int/lit8 v1, p1, 0x7

    const/4 v2, 0x0

    shr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 279
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->setDirty()V

    .line 280
    return-void
.end method

.method public writeShort(IS)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "value"    # S

    .line 211
    iget-object v0, p0, Ljdbm/recman/BlockIo;->data:[B

    add-int/lit8 v1, p1, 0x0

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 212
    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 213
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->setDirty()V

    .line 214
    return-void
.end method
