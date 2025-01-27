.class Ljdbm/recman/PhysicalRowId;
.super Ljava/lang/Object;
.source "PhysicalRowId.java"


# static fields
.field private static final O_BLOCK:S = 0x0s

.field private static final O_OFFSET:S = 0x8s

.field static final SIZE:I = 0xa


# instance fields
.field block:Ljdbm/recman/BlockIo;

.field pos:S


# direct methods
.method constructor <init>(Ljdbm/recman/BlockIo;S)V
    .locals 0
    .param p1, "block"    # Ljdbm/recman/BlockIo;
    .param p2, "pos"    # S

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Ljdbm/recman/PhysicalRowId;->block:Ljdbm/recman/BlockIo;

    .line 73
    iput-short p2, p0, Ljdbm/recman/PhysicalRowId;->pos:S

    .line 74
    return-void
.end method


# virtual methods
.method getBlock()J
    .locals 2

    .line 78
    iget-object v0, p0, Ljdbm/recman/PhysicalRowId;->block:Ljdbm/recman/BlockIo;

    iget-short v1, p0, Ljdbm/recman/PhysicalRowId;->pos:S

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getOffset()S
    .locals 2

    .line 88
    iget-object v0, p0, Ljdbm/recman/PhysicalRowId;->block:Ljdbm/recman/BlockIo;

    iget-short v1, p0, Ljdbm/recman/PhysicalRowId;->pos:S

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result v0

    return v0
.end method

.method setBlock(J)V
    .locals 2
    .param p1, "value"    # J

    .line 83
    iget-object v0, p0, Ljdbm/recman/PhysicalRowId;->block:Ljdbm/recman/BlockIo;

    iget-short v1, p0, Ljdbm/recman/PhysicalRowId;->pos:S

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Ljdbm/recman/BlockIo;->writeLong(IJ)V

    .line 84
    return-void
.end method

.method setOffset(S)V
    .locals 2
    .param p1, "value"    # S

    .line 93
    iget-object v0, p0, Ljdbm/recman/PhysicalRowId;->block:Ljdbm/recman/BlockIo;

    iget-short v1, p0, Ljdbm/recman/PhysicalRowId;->pos:S

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1, p1}, Ljdbm/recman/BlockIo;->writeShort(IS)V

    .line 94
    return-void
.end method
