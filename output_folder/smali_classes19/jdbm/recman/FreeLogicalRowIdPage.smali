.class Ljdbm/recman/FreeLogicalRowIdPage;
.super Ljdbm/recman/PageHeader;
.source "FreeLogicalRowIdPage.java"


# static fields
.field static final ELEMS_PER_PAGE:S = 0x331s

.field private static final O_COUNT:S = 0x12s

.field static final O_FREE:S = 0x14s


# instance fields
.field final slots:[Ljdbm/recman/PhysicalRowId;


# direct methods
.method constructor <init>(Ljdbm/recman/BlockIo;)V
    .locals 1
    .param p1, "block"    # Ljdbm/recman/BlockIo;

    .line 70
    invoke-direct {p0, p1}, Ljdbm/recman/PageHeader;-><init>(Ljdbm/recman/BlockIo;)V

    .line 64
    const/16 v0, 0x331

    new-array v0, v0, [Ljdbm/recman/PhysicalRowId;

    iput-object v0, p0, Ljdbm/recman/FreeLogicalRowIdPage;->slots:[Ljdbm/recman/PhysicalRowId;

    .line 71
    return-void
.end method

.method static getFreeLogicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreeLogicalRowIdPage;
    .locals 2
    .param p0, "block"    # Ljdbm/recman/BlockIo;

    .line 79
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->getView()Ljdbm/recman/BlockView;

    move-result-object v0

    .line 80
    .local v0, "view":Ljdbm/recman/BlockView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljdbm/recman/FreeLogicalRowIdPage;

    if-eqz v1, :cond_0

    .line 81
    move-object v1, v0

    check-cast v1, Ljdbm/recman/FreeLogicalRowIdPage;

    return-object v1

    .line 83
    :cond_0
    new-instance v1, Ljdbm/recman/FreeLogicalRowIdPage;

    invoke-direct {v1, p0}, Ljdbm/recman/FreeLogicalRowIdPage;-><init>(Ljdbm/recman/BlockIo;)V

    return-object v1
.end method

.method private setCount(S)V
    .locals 2
    .param p1, "i"    # S

    .line 93
    iget-object v0, p0, Ljdbm/recman/FreeLogicalRowIdPage;->block:Ljdbm/recman/BlockIo;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Ljdbm/recman/BlockIo;->writeShort(IS)V

    .line 94
    return-void
.end method

.method private slotToOffset(I)S
    .locals 1
    .param p1, "slot"    # I

    .line 129
    mul-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x14

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method alloc(I)Ljdbm/recman/PhysicalRowId;
    .locals 3
    .param p1, "slot"    # I

    .line 104
    invoke-virtual {p0}, Ljdbm/recman/FreeLogicalRowIdPage;->getCount()S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Ljdbm/recman/FreeLogicalRowIdPage;->setCount(S)V

    .line 105
    invoke-virtual {p0, p1}, Ljdbm/recman/FreeLogicalRowIdPage;->get(I)Ljdbm/recman/PhysicalRowId;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/PhysicalRowId;->setBlock(J)V

    .line 106
    invoke-virtual {p0, p1}, Ljdbm/recman/FreeLogicalRowIdPage;->get(I)Ljdbm/recman/PhysicalRowId;

    move-result-object v0

    return-object v0
.end method

.method free(I)V
    .locals 3
    .param p1, "slot"    # I

    .line 98
    invoke-virtual {p0, p1}, Ljdbm/recman/FreeLogicalRowIdPage;->get(I)Ljdbm/recman/PhysicalRowId;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/PhysicalRowId;->setBlock(J)V

    .line 99
    invoke-virtual {p0}, Ljdbm/recman/FreeLogicalRowIdPage;->getCount()S

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Ljdbm/recman/FreeLogicalRowIdPage;->setCount(S)V

    .line 100
    return-void
.end method

.method get(I)Ljdbm/recman/PhysicalRowId;
    .locals 4
    .param p1, "slot"    # I

    .line 122
    iget-object v0, p0, Ljdbm/recman/FreeLogicalRowIdPage;->slots:[Ljdbm/recman/PhysicalRowId;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljdbm/recman/PhysicalRowId;

    iget-object v2, p0, Ljdbm/recman/FreeLogicalRowIdPage;->block:Ljdbm/recman/BlockIo;

    invoke-direct {p0, p1}, Ljdbm/recman/FreeLogicalRowIdPage;->slotToOffset(I)S

    move-result v3

    invoke-direct {v1, v2, v3}, Ljdbm/recman/PhysicalRowId;-><init>(Ljdbm/recman/BlockIo;S)V

    aput-object v1, v0, p1

    .line 124
    :cond_0
    iget-object v0, p0, Ljdbm/recman/FreeLogicalRowIdPage;->slots:[Ljdbm/recman/PhysicalRowId;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getCount()S
    .locals 2

    .line 88
    iget-object v0, p0, Ljdbm/recman/FreeLogicalRowIdPage;->block:Ljdbm/recman/BlockIo;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result v0

    return v0
.end method

.method getFirstAllocated()I
    .locals 2

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x331

    if-ge v0, v1, :cond_1

    .line 149
    invoke-virtual {p0, v0}, Ljdbm/recman/FreeLogicalRowIdPage;->isAllocated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    return v0

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getFirstFree()I
    .locals 2

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x331

    if-ge v0, v1, :cond_1

    .line 138
    invoke-virtual {p0, v0}, Ljdbm/recman/FreeLogicalRowIdPage;->isFree(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    return v0

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method isAllocated(I)Z
    .locals 4
    .param p1, "slot"    # I

    .line 111
    invoke-virtual {p0, p1}, Ljdbm/recman/FreeLogicalRowIdPage;->get(I)Ljdbm/recman/PhysicalRowId;

    move-result-object v0

    invoke-virtual {v0}, Ljdbm/recman/PhysicalRowId;->getBlock()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFree(I)Z
    .locals 1
    .param p1, "slot"    # I

    .line 116
    invoke-virtual {p0, p1}, Ljdbm/recman/FreeLogicalRowIdPage;->isAllocated(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
