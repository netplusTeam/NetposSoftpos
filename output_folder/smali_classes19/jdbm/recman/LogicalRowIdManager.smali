.class final Ljdbm/recman/LogicalRowIdManager;
.super Ljava/lang/Object;
.source "LogicalRowIdManager.java"


# instance fields
.field private file:Ljdbm/recman/RecordFile;

.field private freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

.field private pageman:Ljdbm/recman/PageManager;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V
    .locals 1
    .param p1, "file"    # Ljdbm/recman/RecordFile;
    .param p2, "pageman"    # Ljdbm/recman/PageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    .line 68
    iput-object p2, p0, Ljdbm/recman/LogicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    .line 69
    new-instance v0, Ljdbm/recman/FreeLogicalRowIdPageManager;

    invoke-direct {v0, p1, p2}, Ljdbm/recman/FreeLogicalRowIdPageManager;-><init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V

    iput-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

    .line 71
    return-void
.end method


# virtual methods
.method delete(Ljdbm/recman/Location;)V
    .locals 1
    .param p1, "rowid"    # Ljdbm/recman/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

    invoke-virtual {v0, p1}, Ljdbm/recman/FreeLogicalRowIdPageManager;->put(Ljdbm/recman/Location;)V

    .line 107
    return-void
.end method

.method fetch(Ljdbm/recman/Location;)Ljdbm/recman/Location;
    .locals 6
    .param p1, "rowid"    # Ljdbm/recman/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    invoke-static {v0}, Ljdbm/recman/TranslationPage;->getTranslationPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/TranslationPage;

    move-result-object v0

    .line 138
    .local v0, "xlatPage":Ljdbm/recman/TranslationPage;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljdbm/recman/Location;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v3

    invoke-virtual {v0, v3}, Ljdbm/recman/TranslationPage;->get(S)Ljdbm/recman/PhysicalRowId;

    move-result-object v3

    invoke-direct {v2, v3}, Ljdbm/recman/Location;-><init>(Ljdbm/recman/PhysicalRowId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .local v2, "retval":Ljdbm/recman/Location;
    nop

    .line 141
    iget-object v3, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 142
    return-object v2

    .line 141
    .end local v2    # "retval":Ljdbm/recman/Location;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 142
    throw v2
.end method

.method insert(Ljdbm/recman/Location;)Ljdbm/recman/Location;
    .locals 7
    .param p1, "loc"    # Ljdbm/recman/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

    invoke-virtual {v0}, Ljdbm/recman/FreeLogicalRowIdPageManager;->get()Ljdbm/recman/Location;

    move-result-object v0

    .line 81
    .local v0, "retval":Ljdbm/recman/Location;
    if-nez v0, :cond_2

    .line 84
    iget-object v1, p0, Ljdbm/recman/LogicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide v1

    .line 85
    .local v1, "firstPage":J
    const/16 v3, 0x12

    .line 86
    .local v3, "curOffset":S
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x331

    if-ge v4, v5, :cond_0

    .line 87
    iget-object v5, p0, Ljdbm/recman/LogicalRowIdManager;->freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

    new-instance v6, Ljdbm/recman/Location;

    invoke-direct {v6, v1, v2, v3}, Ljdbm/recman/Location;-><init>(JS)V

    invoke-virtual {v5, v6}, Ljdbm/recman/FreeLogicalRowIdPageManager;->put(Ljdbm/recman/Location;)V

    .line 88
    add-int/lit8 v5, v3, 0xa

    int-to-short v3, v5

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Ljdbm/recman/LogicalRowIdManager;->freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

    invoke-virtual {v4}, Ljdbm/recman/FreeLogicalRowIdPageManager;->get()Ljdbm/recman/Location;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    new-instance v4, Ljava/lang/Error;

    const-string v5, "couldn\'t obtain free translation"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    .end local v1    # "firstPage":J
    .end local v3    # "curOffset":S
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, p1}, Ljdbm/recman/LogicalRowIdManager;->update(Ljdbm/recman/Location;Ljdbm/recman/Location;)V

    .line 97
    return-object v0
.end method

.method update(Ljdbm/recman/Location;Ljdbm/recman/Location;)V
    .locals 6
    .param p1, "rowid"    # Ljdbm/recman/Location;
    .param p2, "loc"    # Ljdbm/recman/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    invoke-static {v0}, Ljdbm/recman/TranslationPage;->getTranslationPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/TranslationPage;

    move-result-object v0

    .line 120
    .local v0, "xlatPage":Ljdbm/recman/TranslationPage;
    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v1

    invoke-virtual {v0, v1}, Ljdbm/recman/TranslationPage;->get(S)Ljdbm/recman/PhysicalRowId;

    move-result-object v1

    .line 121
    .local v1, "physid":Ljdbm/recman/PhysicalRowId;
    invoke-virtual {p2}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljdbm/recman/PhysicalRowId;->setBlock(J)V

    .line 122
    invoke-virtual {p2}, Ljdbm/recman/Location;->getOffset()S

    move-result v2

    invoke-virtual {v1, v2}, Ljdbm/recman/PhysicalRowId;->setOffset(S)V

    .line 123
    iget-object v2, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 124
    return-void
.end method
