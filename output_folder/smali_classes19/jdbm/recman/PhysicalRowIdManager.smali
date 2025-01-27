.class final Ljdbm/recman/PhysicalRowIdManager;
.super Ljava/lang/Object;
.source "PhysicalRowIdManager.java"


# instance fields
.field private file:Ljdbm/recman/RecordFile;

.field private freeman:Ljdbm/recman/FreePhysicalRowIdPageManager;

.field private pageman:Ljdbm/recman/PageManager;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V
    .locals 1
    .param p1, "file"    # Ljdbm/recman/RecordFile;
    .param p2, "pageManager"    # Ljdbm/recman/PageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    .line 71
    iput-object p2, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    .line 72
    new-instance v0, Ljdbm/recman/FreePhysicalRowIdPageManager;

    invoke-direct {v0, p1, p2}, Ljdbm/recman/FreePhysicalRowIdPageManager;-><init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V

    iput-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->freeman:Ljdbm/recman/FreePhysicalRowIdPageManager;

    .line 73
    return-void
.end method

.method private alloc(I)Ljdbm/recman/Location;
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->freeman:Ljdbm/recman/FreePhysicalRowIdPageManager;

    invoke-virtual {v0, p1}, Ljdbm/recman/FreePhysicalRowIdPageManager;->get(I)Ljdbm/recman/Location;

    move-result-object v0

    .line 174
    .local v0, "retval":Ljdbm/recman/Location;
    if-nez v0, :cond_0

    .line 175
    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljdbm/recman/PageManager;->getLast(S)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Ljdbm/recman/PhysicalRowIdManager;->allocNew(IJ)Ljdbm/recman/Location;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method private allocNew(IJ)Ljdbm/recman/Location;
    .locals 12
    .param p1, "size"    # I
    .param p2, "start"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 192
    iget-object v2, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v2, v4}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide p2

    .line 193
    iget-object v2, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p2, p3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 194
    .local v2, "curBlock":Ljdbm/recman/BlockIo;
    invoke-static {v2}, Ljdbm/recman/DataPage;->getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;

    move-result-object v5

    .line 195
    .local v5, "curPage":Ljdbm/recman/DataPage;
    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Ljdbm/recman/DataPage;->setFirst(S)V

    .line 196
    new-instance v7, Ljdbm/recman/RecordHeader;

    invoke-direct {v7, v2, v6}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    move-object v6, v7

    .line 197
    .local v6, "hdr":Ljdbm/recman/RecordHeader;
    invoke-virtual {v6, v3}, Ljdbm/recman/RecordHeader;->setAvailableSize(I)V

    .line 198
    invoke-virtual {v6, v3}, Ljdbm/recman/RecordHeader;->setCurrentSize(I)V

    .line 199
    .end local v6    # "hdr":Ljdbm/recman/RecordHeader;
    goto :goto_0

    .line 200
    .end local v2    # "curBlock":Ljdbm/recman/BlockIo;
    .end local v5    # "curPage":Ljdbm/recman/DataPage;
    :cond_0
    iget-object v2, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p2, p3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 201
    .restart local v2    # "curBlock":Ljdbm/recman/BlockIo;
    invoke-static {v2}, Ljdbm/recman/DataPage;->getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;

    move-result-object v5

    .line 206
    .restart local v5    # "curPage":Ljdbm/recman/DataPage;
    :goto_0
    invoke-virtual {v5}, Ljdbm/recman/DataPage;->getFirst()S

    move-result v6

    .line 207
    .local v6, "pos":S
    if-nez v6, :cond_1

    .line 209
    iget-object v3, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v3, v2}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 210
    invoke-direct {p0, p1, v0, v1}, Ljdbm/recman/PhysicalRowIdManager;->allocNew(IJ)Ljdbm/recman/Location;

    move-result-object v0

    return-object v0

    .line 213
    :cond_1
    new-instance v7, Ljdbm/recman/RecordHeader;

    invoke-direct {v7, v2, v6}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 214
    .local v7, "hdr":Ljdbm/recman/RecordHeader;
    :goto_1
    invoke-virtual {v7}, Ljdbm/recman/RecordHeader;->getAvailableSize()I

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_3

    const/16 v8, 0x2000

    if-ge v6, v8, :cond_3

    .line 215
    invoke-virtual {v7}, Ljdbm/recman/RecordHeader;->getAvailableSize()I

    move-result v10

    add-int/2addr v10, v9

    add-int/2addr v10, v6

    int-to-short v6, v10

    .line 216
    if-ne v6, v8, :cond_2

    .line 218
    iget-object v3, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v3, v2}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 219
    invoke-direct {p0, p1, v0, v1}, Ljdbm/recman/PhysicalRowIdManager;->allocNew(IJ)Ljdbm/recman/Location;

    move-result-object v0

    return-object v0

    .line 222
    :cond_2
    new-instance v8, Ljdbm/recman/RecordHeader;

    invoke-direct {v8, v2, v6}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    move-object v7, v8

    .line 223
    goto :goto_1

    .line 225
    :cond_3
    if-ne v6, v9, :cond_4

    .line 228
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0, v2}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 233
    :cond_4
    new-instance v0, Ljdbm/recman/Location;

    invoke-direct {v0, p2, p3, v6}, Ljdbm/recman/Location;-><init>(JS)V

    .line 234
    .local v0, "retval":Ljdbm/recman/Location;
    rsub-int v1, v6, 0x2000

    sub-int/2addr v1, v9

    .line 235
    .local v1, "freeHere":I
    const/16 v8, 0x18

    if-ge v1, p1, :cond_8

    .line 239
    sub-int v9, p1, v1

    const/16 v10, 0x1fec

    rem-int/2addr v9, v10

    .line 240
    .local v9, "lastSize":I
    rsub-int v11, v9, 0x1fec

    if-ge v11, v8, :cond_5

    .line 241
    rsub-int v8, v9, 0x1fec

    add-int/2addr p1, v8

    .line 245
    :cond_5
    invoke-virtual {v7, p1}, Ljdbm/recman/RecordHeader;->setAvailableSize(I)V

    .line 246
    iget-object v8, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v8, p2, p3, v4}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 248
    sub-int v8, p1, v1

    .line 250
    .local v8, "neededLeft":I
    :goto_2
    if-lt v8, v10, :cond_6

    .line 251
    iget-object v11, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v11, v4}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide p2

    .line 252
    iget-object v11, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v11, p2, p3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 253
    invoke-static {v2}, Ljdbm/recman/DataPage;->getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;

    move-result-object v5

    .line 254
    invoke-virtual {v5, v3}, Ljdbm/recman/DataPage;->setFirst(S)V

    .line 255
    iget-object v11, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v11, p2, p3, v4}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 256
    add-int/lit16 v8, v8, -0x1fec

    .line 257
    goto :goto_2

    .line 258
    :cond_6
    if-lez v8, :cond_7

    .line 260
    iget-object v3, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v3, v4}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide p2

    .line 261
    iget-object v3, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v3, p2, p3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 262
    invoke-static {v2}, Ljdbm/recman/DataPage;->getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;

    move-result-object v3

    .line 263
    .end local v5    # "curPage":Ljdbm/recman/DataPage;
    .local v3, "curPage":Ljdbm/recman/DataPage;
    add-int/lit8 v5, v8, 0x14

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljdbm/recman/DataPage;->setFirst(S)V

    .line 264
    iget-object v5, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v5, p2, p3, v4}, Ljdbm/recman/RecordFile;->release(JZ)V

    move-object v5, v3

    .line 266
    .end local v3    # "curPage":Ljdbm/recman/DataPage;
    .end local v8    # "neededLeft":I
    .end local v9    # "lastSize":I
    .restart local v5    # "curPage":Ljdbm/recman/DataPage;
    :cond_7
    goto :goto_3

    .line 270
    :cond_8
    sub-int v3, v1, p1

    if-gt v3, v8, :cond_9

    .line 271
    move p1, v1

    .line 273
    :cond_9
    invoke-virtual {v7, p1}, Ljdbm/recman/RecordHeader;->setAvailableSize(I)V

    .line 274
    iget-object v3, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v3, p2, p3, v4}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 276
    :goto_3
    return-object v0
.end method

.method private free(Ljdbm/recman/Location;)V
    .locals 7
    .param p1, "id"    # Ljdbm/recman/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    .line 286
    .local v0, "curBlock":Ljdbm/recman/BlockIo;
    invoke-static {v0}, Ljdbm/recman/DataPage;->getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;

    move-result-object v1

    .line 287
    .local v1, "curPage":Ljdbm/recman/DataPage;
    new-instance v2, Ljdbm/recman/RecordHeader;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v3

    invoke-direct {v2, v0, v3}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 288
    .local v2, "hdr":Ljdbm/recman/RecordHeader;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljdbm/recman/RecordHeader;->setCurrentSize(I)V

    .line 289
    iget-object v3, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 292
    iget-object v3, p0, Ljdbm/recman/PhysicalRowIdManager;->freeman:Ljdbm/recman/FreePhysicalRowIdPageManager;

    invoke-virtual {v2}, Ljdbm/recman/RecordHeader;->getAvailableSize()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Ljdbm/recman/FreePhysicalRowIdPageManager;->put(Ljdbm/recman/Location;I)V

    .line 293
    return-void
.end method

.method private write(Ljdbm/recman/Location;[BII)V
    .locals 11
    .param p1, "rowid"    # Ljdbm/recman/Location;
    .param p2, "data"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Ljdbm/recman/PageCursor;

    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;J)V

    .line 303
    .local v0, "curs":Ljdbm/recman/PageCursor;
    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 304
    .local v1, "block":Ljdbm/recman/BlockIo;
    new-instance v2, Ljdbm/recman/RecordHeader;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v3

    invoke-direct {v2, v1, v3}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 305
    .local v2, "hdr":Ljdbm/recman/RecordHeader;
    invoke-virtual {v2, p4}, Ljdbm/recman/RecordHeader;->setCurrentSize(I)V

    .line 306
    const/4 v3, 0x1

    if-nez p4, :cond_0

    .line 307
    iget-object v4, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 308
    return-void

    .line 312
    :cond_0
    move v4, p3

    .line 313
    .local v4, "offsetInBuffer":I
    move v5, p4

    .line 314
    .local v5, "leftToWrite":I
    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v6

    add-int/lit8 v6, v6, 0x8

    int-to-short v6, v6

    .line 315
    .local v6, "dataOffset":S
    :goto_0
    if-lez v5, :cond_3

    .line 317
    rsub-int v7, v6, 0x2000

    .line 319
    .local v7, "toCopy":I
    if-ge v5, v7, :cond_1

    .line 320
    move v7, v5

    .line 322
    :cond_1
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v8

    invoke-static {p2, v4, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    sub-int/2addr v5, v7

    .line 327
    add-int/2addr v4, v7

    .line 329
    iget-object v8, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v3}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 331
    if-lez v5, :cond_2

    .line 332
    iget-object v8, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 333
    const/16 v6, 0x14

    .line 335
    .end local v7    # "toCopy":I
    :cond_2
    goto :goto_0

    .line 336
    :cond_3
    return-void
.end method


# virtual methods
.method delete(Ljdbm/recman/Location;)V
    .locals 0
    .param p1, "rowid"    # Ljdbm/recman/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Ljdbm/recman/PhysicalRowIdManager;->free(Ljdbm/recman/Location;)V

    .line 117
    return-void
.end method

.method fetch(Ljdbm/recman/Location;)[B
    .locals 11
    .param p1, "rowid"    # Ljdbm/recman/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljdbm/recman/PageCursor;

    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;J)V

    .line 127
    .local v0, "curs":Ljdbm/recman/PageCursor;
    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 128
    .local v1, "block":Ljdbm/recman/BlockIo;
    new-instance v2, Ljdbm/recman/RecordHeader;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v3

    invoke-direct {v2, v1, v3}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 131
    .local v2, "head":Ljdbm/recman/RecordHeader;
    invoke-virtual {v2}, Ljdbm/recman/RecordHeader;->getCurrentSize()I

    move-result v3

    new-array v3, v3, [B

    .line 132
    .local v3, "retval":[B
    array-length v4, v3

    if-nez v4, :cond_0

    .line 133
    iget-object v4, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 134
    return-object v3

    .line 138
    :cond_0
    const/4 v4, 0x0

    .line 139
    .local v4, "offsetInBuffer":I
    array-length v5, v3

    .line 140
    .local v5, "leftToRead":I
    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v6

    add-int/lit8 v6, v6, 0x8

    int-to-short v6, v6

    .line 141
    .local v6, "dataOffset":S
    :goto_0
    if-lez v5, :cond_3

    .line 143
    rsub-int v7, v6, 0x2000

    .line 144
    .local v7, "toCopy":I
    if-ge v5, v7, :cond_1

    .line 145
    move v7, v5

    .line 147
    :cond_1
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v8

    invoke-static {v8, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    sub-int/2addr v5, v7

    .line 153
    add-int/2addr v4, v7

    .line 155
    iget-object v8, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v8, v1}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 157
    if-lez v5, :cond_2

    .line 158
    iget-object v8, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 159
    const/16 v6, 0x14

    .line 162
    .end local v7    # "toCopy":I
    :cond_2
    goto :goto_0

    .line 164
    :cond_3
    return-object v3
.end method

.method insert([BII)Ljdbm/recman/Location;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p3}, Ljdbm/recman/PhysicalRowIdManager;->alloc(I)Ljdbm/recman/Location;

    move-result-object v0

    .line 82
    .local v0, "retval":Ljdbm/recman/Location;
    invoke-direct {p0, v0, p1, p2, p3}, Ljdbm/recman/PhysicalRowIdManager;->write(Ljdbm/recman/Location;[BII)V

    .line 83
    return-object v0
.end method

.method update(Ljdbm/recman/Location;[BII)Ljdbm/recman/Location;
    .locals 3
    .param p1, "rowid"    # Ljdbm/recman/Location;
    .param p2, "data"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    .line 95
    .local v0, "block":Ljdbm/recman/BlockIo;
    new-instance v1, Ljdbm/recman/RecordHeader;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v2

    invoke-direct {v1, v0, v2}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 96
    .local v1, "head":Ljdbm/recman/RecordHeader;
    invoke-virtual {v1}, Ljdbm/recman/RecordHeader;->getAvailableSize()I

    move-result v2

    if-le p4, v2, :cond_0

    .line 98
    iget-object v2, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, v0}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 99
    invoke-direct {p0, p1}, Ljdbm/recman/PhysicalRowIdManager;->free(Ljdbm/recman/Location;)V

    .line 100
    invoke-direct {p0, p4}, Ljdbm/recman/PhysicalRowIdManager;->alloc(I)Ljdbm/recman/Location;

    move-result-object p1

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, v0}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 106
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Ljdbm/recman/PhysicalRowIdManager;->write(Ljdbm/recman/Location;[BII)V

    .line 107
    return-object p1
.end method
