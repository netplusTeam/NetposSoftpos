.class public final Ljdbm/recman/TransactionManager;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/recman/TransactionManager$BlockIoComparator;
    }
.end annotation


# static fields
.field static final DEFAULT_TXNS_IN_LOG:I = 0xa

.field static final extension:Ljava/lang/String; = ".lg"


# instance fields
.field private _maxTxns:I

.field private curTxn:I

.field private fos:Ljava/io/FileOutputStream;

.field private oos:Ljava/io/ObjectOutputStream;

.field private owner:Ljdbm/recman/RecordFile;

.field private txns:[Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;)V
    .locals 1
    .param p1, "owner"    # Ljdbm/recman/RecordFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/16 v0, 0xa

    iput v0, p0, Ljdbm/recman/TransactionManager;->_maxTxns:I

    .line 91
    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    .line 104
    iput-object p1, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    .line 105
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->recover()V

    .line 106
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->open()V

    .line 107
    return-void
.end method

.method private close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->sync()V

    .line 342
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 343
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    .line 345
    iput-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    .line 346
    return-void
.end method

.method private discardBlocks(Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "blocks"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "k":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/BlockIo;

    .line 277
    .local v1, "cur":Ljdbm/recman/BlockIo;
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->decrementTransactionCount()V

    .line 278
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->isInTransaction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    iget-object v2, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljdbm/recman/RecordFile;->releaseFromTransaction(Ljdbm/recman/BlockIo;Z)V

    .line 281
    .end local v1    # "cur":Ljdbm/recman/BlockIo;
    :cond_0
    goto :goto_0

    .line 282
    .end local v0    # "k":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private makeLogName()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/RecordFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".lg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->makeLogName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    .line 192
    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    .line 193
    const/16 v1, 0x1360

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    .line 194
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    .line 196
    return-void
.end method

.method private recover()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->makeLogName()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "logName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "logFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    return-void

    .line 204
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 206
    return-void

    .line 209
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 210
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 213
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readShort()S

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v5, 0x1360

    if-ne v4, v5, :cond_2

    .line 219
    nop

    .line 222
    :goto_0
    const/4 v4, 0x0

    .line 224
    .local v4, "blocks":Ljava/util/ArrayList;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 230
    nop

    .line 231
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Ljdbm/recman/TransactionManager;->synchronizeBlocks(Ljava/util/Iterator;Z)V

    .line 236
    :try_start_2
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v5

    .line 240
    nop

    .line 241
    .end local v4    # "blocks":Ljava/util/ArrayList;
    goto :goto_0

    .line 237
    .restart local v4    # "blocks":Ljava/util/ArrayList;
    :catch_0
    move-exception v5

    .line 239
    .local v5, "e":Ljava/io/IOException;
    goto :goto_1

    .line 227
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 229
    .restart local v5    # "e":Ljava/io/IOException;
    nop

    .line 242
    .end local v4    # "blocks":Ljava/util/ArrayList;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v4, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    invoke-virtual {v4}, Ljdbm/recman/RecordFile;->sync()V

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 244
    return-void

    .line 225
    .restart local v4    # "blocks":Ljava/util/ArrayList;
    :catch_2
    move-exception v5

    .line 226
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/Error;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unexcepted exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6

    .line 214
    .end local v4    # "blocks":Ljava/util/ArrayList;
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Bad magic on log file"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local v0    # "logName":Ljava/lang/String;
    .end local v1    # "logFile":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 215
    .restart local v0    # "logName":Ljava/lang/String;
    .restart local v1    # "logFile":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v4

    .line 217
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 218
    return-void
.end method

.method private setClean(Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "blocks"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "k":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/BlockIo;

    .line 268
    .local v1, "cur":Ljdbm/recman/BlockIo;
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->setClean()V

    .line 269
    .end local v1    # "cur":Ljdbm/recman/BlockIo;
    goto :goto_0

    .line 270
    .end local v0    # "k":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private sync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 324
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 325
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 326
    return-void
.end method

.method private synchronizeBlocks(Ljava/util/Iterator;Z)V
    .locals 3
    .param p1, "blockIterator"    # Ljava/util/Iterator;
    .param p2, "fromCore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/recman/BlockIo;

    .line 252
    .local v0, "cur":Ljdbm/recman/BlockIo;
    iget-object v1, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, v0}, Ljdbm/recman/RecordFile;->synch(Ljdbm/recman/BlockIo;)V

    .line 253
    if-eqz p2, :cond_0

    .line 254
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->decrementTransactionCount()V

    .line 255
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->isInTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    iget-object v1, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljdbm/recman/RecordFile;->releaseFromTransaction(Ljdbm/recman/BlockIo;Z)V

    .line 259
    .end local v0    # "cur":Ljdbm/recman/BlockIo;
    :cond_0
    goto :goto_0

    .line 260
    :cond_1
    return-void
.end method

.method private synchronizeLogFromMemory()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->close()V

    .line 158
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Ljdbm/recman/TransactionManager$BlockIoComparator;

    invoke-direct {v1}, Ljdbm/recman/TransactionManager$BlockIoComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 160
    .local v0, "blockList":Ljava/util/TreeSet;
    const/4 v1, 0x0

    .line 161
    .local v1, "numBlocks":I
    const/4 v2, 0x0

    .line 162
    .local v2, "writtenBlocks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Ljdbm/recman/TransactionManager;->_maxTxns:I

    if-ge v3, v4, :cond_3

    .line 163
    iget-object v4, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    if-nez v4, :cond_0

    .line 164
    goto :goto_3

    .line 167
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "k":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljdbm/recman/BlockIo;

    .line 169
    .local v5, "block":Ljdbm/recman/BlockIo;
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    invoke-virtual {v5}, Ljdbm/recman/BlockIo;->decrementTransactionCount()V

    .line 171
    goto :goto_2

    .line 173
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 174
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_2
    nop

    .end local v5    # "block":Ljdbm/recman/BlockIo;
    add-int/lit8 v1, v1, 0x1

    .line 177
    goto :goto_1

    .line 179
    .end local v4    # "k":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 162
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Ljdbm/recman/TransactionManager;->synchronizeBlocks(Ljava/util/Iterator;Z)V

    .line 184
    iget-object v3, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    invoke-virtual {v3}, Ljdbm/recman/RecordFile;->sync()V

    .line 185
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->open()V

    .line 186
    return-void
.end method


# virtual methods
.method add(Ljdbm/recman/BlockIo;)V
    .locals 2
    .param p1, "block"    # Ljdbm/recman/BlockIo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->incrementTransactionCount()V

    .line 303
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    iget v1, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    iget v2, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 311
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->sync()V

    .line 314
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    iget v1, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Ljdbm/recman/TransactionManager;->setClean(Ljava/util/ArrayList;)V

    .line 318
    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    .line 319
    return-void
.end method

.method forceClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 354
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    .line 356
    iput-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    .line 357
    return-void
.end method

.method public setMaximumTransactionsInLog(I)V
    .locals 2
    .param p1, "maxTxns"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    if-lez p1, :cond_1

    .line 139
    iget v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 143
    iput p1, p0, Ljdbm/recman/TransactionManager;->_maxTxns:I

    .line 144
    new-array v0, p1, [Ljava/util/ArrayList;

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    .line 145
    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change setting while transactions are pending in the log"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'maxTxns\' must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->synchronizeLogFromMemory()V

    .line 334
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->close()V

    .line 335
    return-void
.end method

.method start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    .line 291
    iget v1, p0, Ljdbm/recman/TransactionManager;->_maxTxns:I

    if-ne v0, v1, :cond_0

    .line 292
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->synchronizeLogFromMemory()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    .line 295
    :cond_0
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    iget v1, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 296
    return-void
.end method

.method public synchronizeLog()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->synchronizeLogFromMemory()V

    .line 121
    return-void
.end method

.method synchronizeLogFromDisk()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->close()V

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljdbm/recman/TransactionManager;->_maxTxns:I

    if-ge v0, v1, :cond_1

    .line 368
    iget-object v1, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 369
    goto :goto_1

    .line 370
    :cond_0
    invoke-direct {p0, v1}, Ljdbm/recman/TransactionManager;->discardBlocks(Ljava/util/ArrayList;)V

    .line 371
    iget-object v1, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 367
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->recover()V

    .line 375
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->open()V

    .line 376
    return-void
.end method
