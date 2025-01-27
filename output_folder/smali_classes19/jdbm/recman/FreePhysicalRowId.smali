.class final Ljdbm/recman/FreePhysicalRowId;
.super Ljdbm/recman/PhysicalRowId;
.source "FreePhysicalRowId.java"


# static fields
.field private static final O_SIZE:S = 0xas

.field static final SIZE:S = 0xes


# direct methods
.method constructor <init>(Ljdbm/recman/BlockIo;S)V
    .locals 0
    .param p1, "block"    # Ljdbm/recman/BlockIo;
    .param p2, "pos"    # S

    .line 64
    invoke-direct {p0, p1, p2}, Ljdbm/recman/PhysicalRowId;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 65
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 2

    .line 69
    iget-object v0, p0, Ljdbm/recman/FreePhysicalRowId;->block:Ljdbm/recman/BlockIo;

    iget-short v1, p0, Ljdbm/recman/FreePhysicalRowId;->pos:S

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readInt(I)I

    move-result v0

    return v0
.end method

.method setSize(I)V
    .locals 2
    .param p1, "value"    # I

    .line 74
    iget-object v0, p0, Ljdbm/recman/FreePhysicalRowId;->block:Ljdbm/recman/BlockIo;

    iget-short v1, p0, Ljdbm/recman/FreePhysicalRowId;->pos:S

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1, p1}, Ljdbm/recman/BlockIo;->writeInt(II)V

    .line 75
    return-void
.end method
