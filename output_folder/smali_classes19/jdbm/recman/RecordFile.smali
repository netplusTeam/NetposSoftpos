.class public final Ljdbm/recman/RecordFile;
.super Ljava/lang/Object;
.source "RecordFile.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x2000

.field static final cleanData:[B

.field static final extension:Ljava/lang/String; = ".db"


# instance fields
.field private final dirty:Ljava/util/HashMap;

.field private file:Ljava/io/RandomAccessFile;

.field private final fileName:Ljava/lang/String;

.field private final free:Ljava/util/LinkedList;

.field private final inTxn:Ljava/util/HashMap;

.field private final inUse:Ljava/util/HashMap;

.field private transactionsDisabled:Z

.field final txnMgr:Ljdbm/recman/TransactionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Ljdbm/recman/RecordFile;->cleanData:[B

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    .line 97
    iput-object p1, p0, Ljdbm/recman/RecordFile;->fileName:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    .line 99
    new-instance v0, Ljdbm/recman/TransactionManager;

    invoke-direct {v0, p0}, Ljdbm/recman/TransactionManager;-><init>(Ljdbm/recman/RecordFile;)V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    .line 100
    return-void
.end method

.method private getNewNode(J)Ljdbm/recman/BlockIo;
    .locals 5
    .param p1, "blockid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "retval":Ljdbm/recman/BlockIo;
    iget-object v1, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    iget-object v1, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljdbm/recman/BlockIo;

    .line 350
    :cond_0
    if-nez v0, :cond_1

    .line 351
    new-instance v1, Ljdbm/recman/BlockIo;

    const-wide/16 v2, 0x0

    const/16 v4, 0x2000

    new-array v4, v4, [B

    invoke-direct {v1, v2, v3, v4}, Ljdbm/recman/BlockIo;-><init>(J[B)V

    move-object v0, v1

    .line 353
    :cond_1
    invoke-virtual {v0, p1, p2}, Ljdbm/recman/BlockIo;->setBlockId(J)V

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->setView(Ljdbm/recman/BlockView;)V

    .line 355
    return-object v0
.end method

.method private static read(Ljava/io/RandomAccessFile;J[BI)V
    .locals 5
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .param p1, "offset"    # J
    .param p3, "buffer"    # [B
    .param p4, "nBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 399
    move v0, p4

    .line 400
    .local v0, "remaining":I
    const/4 v1, 0x0

    .line 401
    .local v1, "pos":I
    :goto_0
    if-lez v0, :cond_1

    .line 402
    invoke-virtual {p0, p3, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 403
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 404
    sget-object v3, Ljdbm/recman/RecordFile;->cleanData:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    goto :goto_1

    .line 407
    :cond_0
    sub-int/2addr v0, v2

    .line 408
    add-int/2addr v1, v2

    .line 409
    .end local v2    # "read":I
    goto :goto_0

    .line 410
    :cond_1
    :goto_1
    return-void
.end method

.method private showList(Ljava/util/Iterator;)V
    .locals 4
    .param p1, "i"    # Ljava/util/Iterator;

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "cnt":I
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "elem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    .line 335
    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Ljdbm/recman/RecordFile;->commit()V

    .line 292
    :cond_0
    iget-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v0}, Ljdbm/recman/TransactionManager;->shutdown()V

    .line 294
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    .line 315
    return-void

    .line 306
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: inUse blocks at close time"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 308
    new-instance v0, Ljava/lang/Error;

    const-string v1, "inUse blocks at close time"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: dirty blocks at close time"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 303
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Dirty blocks at close time"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_3
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 296
    new-instance v0, Ljava/lang/Error;

    const-string v1, "In transaction not empty"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method commit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 227
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "in use list not empty at commit time ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    :goto_0
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 235
    return-void

    .line 238
    :cond_2
    iget-boolean v0, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    if-nez v0, :cond_3

    .line 239
    iget-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v0}, Ljdbm/recman/TransactionManager;->start()V

    .line 242
    :cond_3
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/BlockIo;

    .line 244
    .local v1, "node":Ljdbm/recman/BlockIo;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 246
    iget-boolean v2, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    if-eqz v2, :cond_4

    .line 247
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v2

    const-wide/16 v4, 0x2000

    mul-long/2addr v2, v4

    .line 248
    .local v2, "offset":J
    iget-object v4, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 249
    iget-object v4, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 250
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->setClean()V

    .line 251
    iget-object v4, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v2    # "offset":J
    goto :goto_2

    .line 254
    :cond_4
    iget-object v2, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v2, v1}, Ljdbm/recman/TransactionManager;->add(Ljdbm/recman/BlockIo;)V

    .line 255
    iget-object v2, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Long;

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .end local v1    # "node":Ljdbm/recman/BlockIo;
    :goto_2
    goto :goto_1

    .line 258
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_5
    iget-boolean v0, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    if-nez v0, :cond_6

    .line 259
    iget-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v0}, Ljdbm/recman/TransactionManager;->commit()V

    .line 261
    :cond_6
    return-void
.end method

.method disableTransactions()V
    .locals 1

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    .line 115
    return-void
.end method

.method discard(Ljdbm/recman/BlockIo;)V
    .locals 3
    .param p1, "block"    # Ljdbm/recman/BlockIo;

    .line 212
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 213
    .local v0, "key":Ljava/lang/Long;
    iget-object v1, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method forceClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v0}, Ljdbm/recman/TransactionManager;->forceClose()V

    .line 324
    iget-object v0, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 325
    return-void
.end method

.method get(J)Ljdbm/recman/BlockIo;
    .locals 8
    .param p1, "blockid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 129
    .local v0, "key":Ljava/lang/Long;
    iget-object v1, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/BlockIo;

    .line 130
    .local v1, "node":Ljdbm/recman/BlockIo;
    if-eqz v1, :cond_0

    .line 131
    iget-object v2, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v2, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-object v1

    .line 135
    :cond_0
    iget-object v2, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljdbm/recman/BlockIo;

    .line 136
    if-eqz v1, :cond_1

    .line 137
    iget-object v2, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v2, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-object v1

    .line 141
    :cond_1
    iget-object v2, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljdbm/recman/BlockIo;

    .line 143
    .local v3, "cur":Ljdbm/recman/BlockIo;
    invoke-virtual {v3}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 144
    move-object v1, v3

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 146
    iget-object v4, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-object v1

    .line 149
    .end local v3    # "cur":Ljdbm/recman/BlockIo;
    :cond_2
    goto :goto_0

    .line 152
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 157
    invoke-direct {p0, p1, p2}, Ljdbm/recman/RecordFile;->getNewNode(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 158
    const-wide/16 v2, 0x2000

    mul-long/2addr v2, p1

    .line 159
    .local v2, "offset":J
    iget-object v4, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/16 v5, 0x2000

    if-lez v4, :cond_4

    iget-object v4, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v4, v2, v6

    if-gtz v4, :cond_4

    .line 160
    iget-object v4, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v6

    invoke-static {v4, v2, v3, v6, v5}, Ljdbm/recman/RecordFile;->read(Ljava/io/RandomAccessFile;J[BI)V

    .line 161
    goto :goto_1

    .line 162
    :cond_4
    sget-object v4, Ljdbm/recman/RecordFile;->cleanData:[B

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :goto_1
    iget-object v4, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->setClean()V

    .line 166
    return-object v1

    .line 153
    .end local v2    # "offset":J
    :cond_5
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "double get for block "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getFileName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Ljdbm/recman/RecordFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method release(JZ)V
    .locals 4
    .param p1, "blockid"    # J
    .param p3, "isDirty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/recman/BlockIo;

    .line 179
    .local v0, "node":Ljdbm/recman/BlockIo;
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->isDirty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 182
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->setDirty()V

    .line 183
    :cond_0
    invoke-virtual {p0, v0}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 184
    return-void

    .line 180
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bad blockid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " on release"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method release(Ljdbm/recman/BlockIo;)V
    .locals 3
    .param p1, "block"    # Ljdbm/recman/BlockIo;

    .line 192
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 193
    .local v0, "key":Ljava/lang/Long;
    iget-object v1, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    goto :goto_0

    .line 198
    :cond_0
    iget-boolean v1, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_0
    return-void
.end method

.method releaseFromTransaction(Ljdbm/recman/BlockIo;Z)V
    .locals 3
    .param p1, "node"    # Ljdbm/recman/BlockIo;
    .param p2, "recycle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 380
    .local v0, "key":Ljava/lang/Long;
    iget-object v1, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 381
    iget-object v1, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    return-void
.end method

.method rollback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, ")"

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 276
    iget-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v0}, Ljdbm/recman/TransactionManager;->synchronizeLogFromDisk()V

    .line 278
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 280
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "in txn list not empty at rollback time ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 270
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "in use list not empty at rollback time ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 390
    return-void
.end method

.method synch(Ljdbm/recman/BlockIo;)V
    .locals 5
    .param p1, "node"    # Ljdbm/recman/BlockIo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v0

    .line 364
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v1

    const-wide/16 v3, 0x2000

    mul-long/2addr v1, v3

    .line 366
    .local v1, "offset":J
    iget-object v3, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 367
    iget-object v3, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 369
    .end local v1    # "offset":J
    :cond_0
    return-void
.end method
