.class final Ljdbm/recman/FreeLogicalRowIdPageManager;
.super Ljava/lang/Object;
.source "FreeLogicalRowIdPageManager.java"


# instance fields
.field private file:Ljdbm/recman/RecordFile;

.field private pageman:Ljdbm/recman/PageManager;


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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    .line 69
    iput-object p2, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->pageman:Ljdbm/recman/PageManager;

    .line 70
    return-void
.end method


# virtual methods
.method get()Ljdbm/recman/Location;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "retval":Ljdbm/recman/Location;
    new-instance v1, Ljdbm/recman/PageCursor;

    iget-object v2, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->pageman:Ljdbm/recman/PageManager;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;S)V

    .line 82
    .local v1, "curs":Ljdbm/recman/PageCursor;
    :goto_0
    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    invoke-static {v2}, Ljdbm/recman/FreeLogicalRowIdPage;->getFreeLogicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreeLogicalRowIdPage;

    move-result-object v2

    .line 85
    .local v2, "fp":Ljdbm/recman/FreeLogicalRowIdPage;
    invoke-virtual {v2}, Ljdbm/recman/FreeLogicalRowIdPage;->getFirstAllocated()I

    move-result v4

    .line 86
    .local v4, "slot":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 88
    new-instance v5, Ljdbm/recman/Location;

    invoke-virtual {v2, v4}, Ljdbm/recman/FreeLogicalRowIdPage;->get(I)Ljdbm/recman/PhysicalRowId;

    move-result-object v7

    invoke-direct {v5, v7}, Ljdbm/recman/Location;-><init>(Ljdbm/recman/PhysicalRowId;)V

    move-object v0, v5

    .line 90
    invoke-virtual {v2, v4}, Ljdbm/recman/FreeLogicalRowIdPage;->free(I)V

    .line 91
    invoke-virtual {v2}, Ljdbm/recman/FreeLogicalRowIdPage;->getCount()S

    move-result v5

    if-nez v5, :cond_0

    .line 93
    iget-object v5, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8, v6}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 94
    iget-object v5, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v6

    invoke-virtual {v5, v3, v6, v7}, Ljdbm/recman/PageManager;->free(SJ)V

    .line 95
    goto :goto_1

    .line 97
    :cond_0
    iget-object v3, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 99
    :goto_1
    return-object v0

    .line 103
    :cond_1
    iget-object v5, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8, v6}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 105
    .end local v2    # "fp":Ljdbm/recman/FreeLogicalRowIdPage;
    .end local v4    # "slot":I
    goto :goto_0

    .line 106
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method put(Ljdbm/recman/Location;)V
    .locals 10
    .param p1, "rowid"    # Ljdbm/recman/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "free":Ljdbm/recman/PhysicalRowId;
    new-instance v1, Ljdbm/recman/PageCursor;

    iget-object v2, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->pageman:Ljdbm/recman/PageManager;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;S)V

    .line 117
    .local v1, "curs":Ljdbm/recman/PageCursor;
    const-wide/16 v4, 0x0

    .line 118
    .local v4, "freePage":J
    :goto_0
    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v1}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v4

    .line 120
    iget-object v2, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, v4, v5}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 121
    .local v2, "curBlock":Ljdbm/recman/BlockIo;
    invoke-static {v2}, Ljdbm/recman/FreeLogicalRowIdPage;->getFreeLogicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreeLogicalRowIdPage;

    move-result-object v6

    .line 123
    .local v6, "fp":Ljdbm/recman/FreeLogicalRowIdPage;
    invoke-virtual {v6}, Ljdbm/recman/FreeLogicalRowIdPage;->getFirstFree()I

    move-result v7

    .line 124
    .local v7, "slot":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 125
    invoke-virtual {v6, v7}, Ljdbm/recman/FreeLogicalRowIdPage;->alloc(I)Ljdbm/recman/PhysicalRowId;

    move-result-object v0

    .line 126
    goto :goto_1

    .line 129
    :cond_0
    iget-object v8, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v8, v2}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 130
    .end local v2    # "curBlock":Ljdbm/recman/BlockIo;
    .end local v6    # "fp":Ljdbm/recman/FreeLogicalRowIdPage;
    .end local v7    # "slot":I
    goto :goto_0

    .line 131
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 133
    iget-object v2, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v2, v3}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide v4

    .line 134
    iget-object v2, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, v4, v5}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 135
    .restart local v2    # "curBlock":Ljdbm/recman/BlockIo;
    invoke-static {v2}, Ljdbm/recman/FreeLogicalRowIdPage;->getFreeLogicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreeLogicalRowIdPage;

    move-result-object v3

    .line 137
    .local v3, "fp":Ljdbm/recman/FreeLogicalRowIdPage;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljdbm/recman/FreeLogicalRowIdPage;->alloc(I)Ljdbm/recman/PhysicalRowId;

    move-result-object v0

    .line 139
    .end local v2    # "curBlock":Ljdbm/recman/BlockIo;
    .end local v3    # "fp":Ljdbm/recman/FreeLogicalRowIdPage;
    :cond_2
    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljdbm/recman/PhysicalRowId;->setBlock(J)V

    .line 140
    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v2

    invoke-virtual {v0, v2}, Ljdbm/recman/PhysicalRowId;->setOffset(S)V

    .line 141
    iget-object v2, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 142
    return-void
.end method
