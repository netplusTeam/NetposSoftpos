.class final Ljdbm/recman/FreePhysicalRowIdPageManager;
.super Ljava/lang/Object;
.source "FreePhysicalRowIdPageManager.java"


# instance fields
.field protected _file:Ljdbm/recman/RecordFile;

.field protected _pageman:Ljdbm/recman/PageManager;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V
    .locals 0
    .param p1, "file"    # Ljdbm/recman/RecordFile;
    .param p2, "pageman"    # Ljdbm/recman/PageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    .line 72
    iput-object p2, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_pageman:Ljdbm/recman/PageManager;

    .line 73
    return-void
.end method


# virtual methods
.method get(I)Ljdbm/recman/Location;
    .locals 10
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "retval":Ljdbm/recman/Location;
    new-instance v1, Ljdbm/recman/PageCursor;

    iget-object v2, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_pageman:Ljdbm/recman/PageManager;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;S)V

    .line 88
    .local v1, "curs":Ljdbm/recman/PageCursor;
    :goto_0
    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    invoke-static {v2}, Ljdbm/recman/FreePhysicalRowIdPage;->getFreePhysicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreePhysicalRowIdPage;

    move-result-object v2

    .line 91
    .local v2, "fp":Ljdbm/recman/FreePhysicalRowIdPage;
    invoke-virtual {v2, p1}, Ljdbm/recman/FreePhysicalRowIdPage;->getFirstLargerThan(I)I

    move-result v4

    .line 92
    .local v4, "slot":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 94
    new-instance v5, Ljdbm/recman/Location;

    invoke-virtual {v2, v4}, Ljdbm/recman/FreePhysicalRowIdPage;->get(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v7

    invoke-direct {v5, v7}, Ljdbm/recman/Location;-><init>(Ljdbm/recman/PhysicalRowId;)V

    move-object v0, v5

    .line 96
    invoke-virtual {v2, v4}, Ljdbm/recman/FreePhysicalRowIdPage;->get(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v5

    invoke-virtual {v5}, Ljdbm/recman/FreePhysicalRowId;->getSize()I

    move-result v5

    .line 97
    .local v5, "slotsize":I
    invoke-virtual {v2, v4}, Ljdbm/recman/FreePhysicalRowIdPage;->free(I)V

    .line 98
    invoke-virtual {v2}, Ljdbm/recman/FreePhysicalRowIdPage;->getCount()S

    move-result v7

    if-nez v7, :cond_0

    .line 100
    iget-object v7, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v6}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 101
    iget-object v6, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v7

    invoke-virtual {v6, v3, v7, v8}, Ljdbm/recman/PageManager;->free(SJ)V

    .line 102
    goto :goto_1

    .line 103
    :cond_0
    iget-object v3, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v3, v6, v7, v8}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 106
    :goto_1
    return-object v0

    .line 109
    .end local v5    # "slotsize":I
    :cond_1
    iget-object v5, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8, v6}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 112
    .end local v2    # "fp":Ljdbm/recman/FreePhysicalRowIdPage;
    .end local v4    # "slot":I
    goto :goto_0

    .line 113
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method put(Ljdbm/recman/Location;I)V
    .locals 10
    .param p1, "rowid"    # Ljdbm/recman/Location;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "free":Ljdbm/recman/FreePhysicalRowId;
    new-instance v1, Ljdbm/recman/PageCursor;

    iget-object v2, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_pageman:Ljdbm/recman/PageManager;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;S)V

    .line 124
    .local v1, "curs":Ljdbm/recman/PageCursor;
    const-wide/16 v4, 0x0

    .line 125
    .local v4, "freePage":J
    :goto_0
    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v4

    .line 127
    iget-object v2, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, v4, v5}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 128
    .local v2, "curBlock":Ljdbm/recman/BlockIo;
    invoke-static {v2}, Ljdbm/recman/FreePhysicalRowIdPage;->getFreePhysicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreePhysicalRowIdPage;

    move-result-object v6

    .line 130
    .local v6, "fp":Ljdbm/recman/FreePhysicalRowIdPage;
    invoke-virtual {v6}, Ljdbm/recman/FreePhysicalRowIdPage;->getFirstFree()I

    move-result v7

    .line 131
    .local v7, "slot":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 132
    invoke-virtual {v6, v7}, Ljdbm/recman/FreePhysicalRowIdPage;->alloc(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v0

    .line 133
    goto :goto_1

    .line 136
    :cond_0
    iget-object v8, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v8, v2}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 137
    .end local v2    # "curBlock":Ljdbm/recman/BlockIo;
    .end local v6    # "fp":Ljdbm/recman/FreePhysicalRowIdPage;
    .end local v7    # "slot":I
    goto :goto_0

    .line 138
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 140
    iget-object v2, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v2, v3}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide v4

    .line 141
    iget-object v2, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, v4, v5}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 142
    .restart local v2    # "curBlock":Ljdbm/recman/BlockIo;
    invoke-static {v2}, Ljdbm/recman/FreePhysicalRowIdPage;->getFreePhysicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreePhysicalRowIdPage;

    move-result-object v3

    .line 144
    .local v3, "fp":Ljdbm/recman/FreePhysicalRowIdPage;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljdbm/recman/FreePhysicalRowIdPage;->alloc(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v0

    .line 147
    .end local v2    # "curBlock":Ljdbm/recman/BlockIo;
    .end local v3    # "fp":Ljdbm/recman/FreePhysicalRowIdPage;
    :cond_2
    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljdbm/recman/FreePhysicalRowId;->setBlock(J)V

    .line 148
    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v2

    invoke-virtual {v0, v2}, Ljdbm/recman/FreePhysicalRowId;->setOffset(S)V

    .line 149
    invoke-virtual {v0, p2}, Ljdbm/recman/FreePhysicalRowId;->setSize(I)V

    .line 150
    iget-object v2, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 151
    return-void
.end method
