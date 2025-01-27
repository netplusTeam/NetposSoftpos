.class final Ljdbm/recman/FreePhysicalRowIdPage;
.super Ljdbm/recman/PageHeader;
.source "FreePhysicalRowIdPage.java"


# static fields
.field static final ELEMS_PER_PAGE:S = 0x247s

.field private static final O_COUNT:S = 0x12s

.field static final O_FREE:S = 0x14s


# instance fields
.field slots:[Ljdbm/recman/FreePhysicalRowId;


# direct methods
.method constructor <init>(Ljdbm/recman/BlockIo;)V
    .locals 1
    .param p1, "block"    # Ljdbm/recman/BlockIo;

    .line 67
    invoke-direct {p0, p1}, Ljdbm/recman/PageHeader;-><init>(Ljdbm/recman/BlockIo;)V

    .line 61
    const/16 v0, 0x247

    new-array v0, v0, [Ljdbm/recman/FreePhysicalRowId;

    iput-object v0, p0, Ljdbm/recman/FreePhysicalRowIdPage;->slots:[Ljdbm/recman/FreePhysicalRowId;

    .line 68
    return-void
.end method

.method static getFreePhysicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreePhysicalRowIdPage;
    .locals 2
    .param p0, "block"    # Ljdbm/recman/BlockIo;

    .line 75
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->getView()Ljdbm/recman/BlockView;

    move-result-object v0

    .line 76
    .local v0, "view":Ljdbm/recman/BlockView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljdbm/recman/FreePhysicalRowIdPage;

    if-eqz v1, :cond_0

    .line 77
    move-object v1, v0

    check-cast v1, Ljdbm/recman/FreePhysicalRowIdPage;

    return-object v1

    .line 79
    :cond_0
    new-instance v1, Ljdbm/recman/FreePhysicalRowIdPage;

    invoke-direct {v1, p0}, Ljdbm/recman/FreePhysicalRowIdPage;-><init>(Ljdbm/recman/BlockIo;)V

    return-object v1
.end method

.method private setCount(S)V
    .locals 2
    .param p1, "i"    # S

    .line 89
    iget-object v0, p0, Ljdbm/recman/FreePhysicalRowIdPage;->block:Ljdbm/recman/BlockIo;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Ljdbm/recman/BlockIo;->writeShort(IS)V

    .line 90
    return-void
.end method


# virtual methods
.method alloc(I)Ljdbm/recman/FreePhysicalRowId;
    .locals 1
    .param p1, "slot"    # I

    .line 100
    invoke-virtual {p0}, Ljdbm/recman/FreePhysicalRowIdPage;->getCount()S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Ljdbm/recman/FreePhysicalRowIdPage;->setCount(S)V

    .line 101
    invoke-virtual {p0, p1}, Ljdbm/recman/FreePhysicalRowIdPage;->get(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v0

    return-object v0
.end method

.method free(I)V
    .locals 2
    .param p1, "slot"    # I

    .line 94
    invoke-virtual {p0, p1}, Ljdbm/recman/FreePhysicalRowIdPage;->get(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljdbm/recman/FreePhysicalRowId;->setSize(I)V

    .line 95
    invoke-virtual {p0}, Ljdbm/recman/FreePhysicalRowIdPage;->getCount()S

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Ljdbm/recman/FreePhysicalRowIdPage;->setCount(S)V

    .line 96
    return-void
.end method

.method get(I)Ljdbm/recman/FreePhysicalRowId;
    .locals 4
    .param p1, "slot"    # I

    .line 117
    iget-object v0, p0, Ljdbm/recman/FreePhysicalRowIdPage;->slots:[Ljdbm/recman/FreePhysicalRowId;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljdbm/recman/FreePhysicalRowId;

    iget-object v2, p0, Ljdbm/recman/FreePhysicalRowIdPage;->block:Ljdbm/recman/BlockIo;

    invoke-virtual {p0, p1}, Ljdbm/recman/FreePhysicalRowIdPage;->slotToOffset(I)S

    move-result v3

    invoke-direct {v1, v2, v3}, Ljdbm/recman/FreePhysicalRowId;-><init>(Ljdbm/recman/BlockIo;S)V

    aput-object v1, v0, p1

    .line 119
    :cond_0
    iget-object v0, p0, Ljdbm/recman/FreePhysicalRowIdPage;->slots:[Ljdbm/recman/FreePhysicalRowId;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getCount()S
    .locals 2

    .line 84
    iget-object v0, p0, Ljdbm/recman/FreePhysicalRowIdPage;->block:Ljdbm/recman/BlockIo;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result v0

    return v0
.end method

.method getFirstFree()I
    .locals 2

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x247

    if-ge v0, v1, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Ljdbm/recman/FreePhysicalRowIdPage;->isFree(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    return v0

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getFirstLargerThan(I)I
    .locals 2
    .param p1, "size"    # I

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x247

    if-ge v0, v1, :cond_1

    .line 145
    invoke-virtual {p0, v0}, Ljdbm/recman/FreePhysicalRowIdPage;->isAllocated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljdbm/recman/FreePhysicalRowIdPage;->get(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v1

    invoke-virtual {v1}, Ljdbm/recman/FreePhysicalRowId;->getSize()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 146
    return v0

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method isAllocated(I)Z
    .locals 1
    .param p1, "slot"    # I

    .line 106
    invoke-virtual {p0, p1}, Ljdbm/recman/FreePhysicalRowIdPage;->get(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v0

    invoke-virtual {v0}, Ljdbm/recman/FreePhysicalRowId;->getSize()I

    move-result v0

    if-eqz v0, :cond_0

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

    .line 111
    invoke-virtual {p0, p1}, Ljdbm/recman/FreePhysicalRowIdPage;->isAllocated(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method slotToOffset(I)S
    .locals 1
    .param p1, "slot"    # I

    .line 124
    mul-int/lit8 v0, p1, 0xe

    add-int/lit8 v0, v0, 0x14

    int-to-short v0, v0

    return v0
.end method
