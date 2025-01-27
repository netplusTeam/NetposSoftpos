.class final Ljdbm/recman/PageManager;
.super Ljava/lang/Object;
.source "PageManager.java"


# instance fields
.field private file:Ljdbm/recman/RecordFile;

.field private header:Ljdbm/recman/FileHeader;

.field private headerBuf:Ljdbm/recman/BlockIo;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;)V
    .locals 3
    .param p1, "file"    # Ljdbm/recman/RecordFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    .line 70
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    iput-object v0, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljdbm/recman/FileHeader;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljdbm/recman/FileHeader;-><init>(Ljdbm/recman/BlockIo;Z)V

    iput-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Ljdbm/recman/FileHeader;

    iget-object v2, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    invoke-direct {v0, v2, v1}, Ljdbm/recman/FileHeader;-><init>(Ljdbm/recman/BlockIo;Z)V

    iput-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    .line 75
    :goto_0
    return-void
.end method


# virtual methods
.method allocate(S)J
    .locals 13
    .param p1, "type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    if-eqz p1, :cond_5

    .line 87
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljdbm/recman/FileHeader;->getFirstOf(I)J

    move-result-wide v2

    .line 88
    .local v2, "retval":J
    const/4 v0, 0x0

    .line 89
    .local v0, "isNew":Z
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 92
    iget-object v6, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {p0, v2, v3}, Ljdbm/recman/PageManager;->getNext(J)J

    move-result-wide v7

    invoke-virtual {v6, v1, v7, v8}, Ljdbm/recman/FileHeader;->setFirstOf(IJ)V

    .line 93
    goto :goto_0

    .line 96
    :cond_0
    iget-object v6, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v6, v1}, Ljdbm/recman/FileHeader;->getLastOf(I)J

    move-result-wide v2

    .line 97
    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 99
    const-wide/16 v2, 0x1

    .line 100
    :cond_1
    iget-object v6, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    const-wide/16 v7, 0x1

    add-long/2addr v7, v2

    invoke-virtual {v6, v1, v7, v8}, Ljdbm/recman/FileHeader;->setLastOf(IJ)V

    .line 101
    const/4 v0, 0x1

    .line 105
    :goto_0
    iget-object v6, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v6, v2, v3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v6

    .line 106
    .local v6, "buf":Ljdbm/recman/BlockIo;
    if-eqz v0, :cond_2

    new-instance v7, Ljdbm/recman/PageHeader;

    invoke-direct {v7, v6, p1}, Ljdbm/recman/PageHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v7

    .line 108
    .local v7, "pageHdr":Ljdbm/recman/PageHeader;
    :goto_1
    iget-object v8, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v8, p1}, Ljdbm/recman/FileHeader;->getLastOf(I)J

    move-result-wide v8

    .line 111
    .local v8, "oldLast":J
    sget-object v10, Ljdbm/recman/RecordFile;->cleanData:[B

    invoke-virtual {v6}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v11

    const/16 v12, 0x2000

    invoke-static {v10, v1, v11, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-virtual {v7, p1}, Ljdbm/recman/PageHeader;->setType(S)V

    .line 115
    invoke-virtual {v7, v8, v9}, Ljdbm/recman/PageHeader;->setPrev(J)V

    .line 116
    invoke-virtual {v7, v4, v5}, Ljdbm/recman/PageHeader;->setNext(J)V

    .line 119
    cmp-long v1, v8, v4

    if-nez v1, :cond_3

    .line 121
    iget-object v1, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v1, p1, v2, v3}, Ljdbm/recman/FileHeader;->setFirstOf(IJ)V

    .line 122
    :cond_3
    iget-object v1, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v1, p1, v2, v3}, Ljdbm/recman/FileHeader;->setLastOf(IJ)V

    .line 123
    iget-object v1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    const/4 v10, 0x1

    invoke-virtual {v1, v2, v3, v10}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 126
    cmp-long v1, v8, v4

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, v8, v9}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v6

    .line 128
    invoke-static {v6}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v7

    .line 129
    invoke-virtual {v7, v2, v3}, Ljdbm/recman/PageHeader;->setNext(J)V

    .line 130
    iget-object v1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, v8, v9, v10}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 134
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljdbm/recman/BlockIo;->setView(Ljdbm/recman/BlockView;)V

    .line 136
    return-wide v2

    .line 84
    .end local v0    # "isNew":Z
    .end local v2    # "retval":J
    .end local v6    # "buf":Ljdbm/recman/BlockIo;
    .end local v7    # "pageHdr":Ljdbm/recman/PageHeader;
    .end local v8    # "oldLast":J
    :cond_5
    new-instance v0, Ljava/lang/Error;

    const-string v1, "allocate of free page?"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    invoke-virtual {v0, v1}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 259
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/RecordFile;->commit()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    .line 261
    iput-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    .line 262
    iput-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    .line 263
    return-void
.end method

.method commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    invoke-virtual {v0, v1}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 230
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/RecordFile;->commit()V

    .line 233
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    iput-object v0, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    .line 234
    new-instance v1, Ljdbm/recman/FileHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljdbm/recman/FileHeader;-><init>(Ljdbm/recman/BlockIo;Z)V

    iput-object v1, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    .line 235
    return-void
.end method

.method free(SJ)V
    .locals 11
    .param p1, "type"    # S
    .param p2, "recid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    if-eqz p1, :cond_3

    .line 145
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p2, p3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 150
    .local v2, "buf":Ljdbm/recman/BlockIo;
    invoke-static {v2}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v3

    .line 151
    .local v3, "pageHdr":Ljdbm/recman/PageHeader;
    invoke-virtual {v3}, Ljdbm/recman/PageHeader;->getPrev()J

    move-result-wide v4

    .line 152
    .local v4, "prev":J
    invoke-virtual {v3}, Ljdbm/recman/PageHeader;->getNext()J

    move-result-wide v6

    .line 155
    .local v6, "next":J
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljdbm/recman/PageHeader;->setType(S)V

    .line 156
    iget-object v9, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v9, v8}, Ljdbm/recman/FileHeader;->getFirstOf(I)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljdbm/recman/PageHeader;->setNext(J)V

    .line 157
    invoke-virtual {v3, v0, v1}, Ljdbm/recman/PageHeader;->setPrev(J)V

    .line 159
    iget-object v9, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v9, v8, p2, p3}, Ljdbm/recman/FileHeader;->setFirstOf(IJ)V

    .line 160
    iget-object v8, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    const/4 v9, 0x1

    invoke-virtual {v8, p2, p3, v9}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 163
    cmp-long v8, v4, v0

    if-eqz v8, :cond_0

    .line 164
    iget-object v8, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v8, v4, v5}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 165
    invoke-static {v2}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v3

    .line 166
    invoke-virtual {v3, v6, v7}, Ljdbm/recman/PageHeader;->setNext(J)V

    .line 167
    iget-object v8, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v8, v4, v5, v9}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 168
    goto :goto_0

    .line 170
    :cond_0
    iget-object v8, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v8, p1, v6, v7}, Ljdbm/recman/FileHeader;->setFirstOf(IJ)V

    .line 172
    :goto_0
    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0, v6, v7}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 174
    invoke-static {v2}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v3

    .line 175
    invoke-virtual {v3, v4, v5}, Ljdbm/recman/PageHeader;->setPrev(J)V

    .line 176
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0, v6, v7, v9}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 177
    goto :goto_1

    .line 179
    :cond_1
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v0, p1, v4, v5}, Ljdbm/recman/FileHeader;->setLastOf(IJ)V

    .line 182
    :goto_1
    return-void

    .line 146
    .end local v2    # "buf":Ljdbm/recman/BlockIo;
    .end local v3    # "pageHdr":Ljdbm/recman/PageHeader;
    .end local v4    # "prev":J
    .end local v6    # "next":J
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "free header page?"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "free free page?"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getFileHeader()Ljdbm/recman/FileHeader;
    .locals 1

    .line 269
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    return-object v0
.end method

.method getFirst(S)J
    .locals 2
    .param p1, "type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v0, p1}, Ljdbm/recman/FileHeader;->getFirstOf(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getLast(S)J
    .locals 2
    .param p1, "type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v0, p1}, Ljdbm/recman/FileHeader;->getLastOf(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getNext(J)J
    .locals 4
    .param p1, "block"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, p1, p2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    invoke-static {v1}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v1

    invoke-virtual {v1}, Ljdbm/recman/PageHeader;->getNext()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v3, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v3, p1, p2, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 193
    return-wide v1

    .line 192
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p1, p2, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 193
    throw v1
.end method

.method getPrev(J)J
    .locals 4
    .param p1, "block"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, p1, p2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    invoke-static {v1}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v1

    invoke-virtual {v1}, Ljdbm/recman/PageHeader;->getPrev()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object v3, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v3, p1, p2, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 204
    return-wide v1

    .line 203
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p1, p2, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 204
    throw v1
.end method

.method rollback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    invoke-virtual {v0, v1}, Ljdbm/recman/RecordFile;->discard(Ljdbm/recman/BlockIo;)V

    .line 244
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/RecordFile;->rollback()V

    .line 246
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    iput-object v0, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljdbm/recman/FileHeader;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljdbm/recman/FileHeader;-><init>(Ljdbm/recman/BlockIo;Z)V

    iput-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Ljdbm/recman/FileHeader;

    iget-object v2, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    invoke-direct {v0, v2, v1}, Ljdbm/recman/FileHeader;-><init>(Ljdbm/recman/BlockIo;Z)V

    iput-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    .line 251
    :goto_0
    return-void
.end method
